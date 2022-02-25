import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/routes/guards/auth.guard.dart';
import 'package:vehicle_app/routes/observers/route_observer.dart';
import 'package:vehicle_app/utils/bindings/service_bindings.dart';

import 'config/config_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ConfigHandler.init().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter(authGuard: AuthGuard());
  // final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
      ],
      initialBinding: ServiceBindings(),
      // routerDelegate: _appRouter.delegate(),
      routerDelegate: AutoRouterDelegate(_appRouter,
          navigatorObservers: () => [AppRouteObserver()]),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Vehicle App',
      theme: ThemeData.light(),
    );
  }
}
