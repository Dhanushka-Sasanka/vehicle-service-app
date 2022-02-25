import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/views/app/home_base_controller.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  final _homeBaseController = Get.put(HomeBaseController());

  @override
  void dispose() {
    Get.delete<HomeBaseController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(_homeBaseController.appBarTitle.value)),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   index: 2,
        //   height: 50,
        //   backgroundColor: kBgColor,
        //   buttonBackgroundColor: kPrimaryColor,
        //   color: kLayoutColor!,
        //   items: const <Widget>[
        //     Icon(FontAwesomeIcons.calendarCheck, size: 25),
        //     Icon(FontAwesomeIcons.search, size: 25),
        //     Icon(FontAwesomeIcons.home, size: 25),
        //     Icon(FontAwesomeIcons.heart, size: 25),
        //   ],
        //   onTap: (index) {
        //     _homeBaseController.onNavigation(context, index);
        //   },
        // ),
        drawer: SizedBox(
          width: _size.width * 0.7,
          height: _size.height,
          child: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: _size.height * 0.3,
                  child: Image.asset(
                    "assets/images/drawer_top_image.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: const Text("Home"),
                  leading: const Icon(FontAwesomeIcons.home),
                  onTap: () {
                    Navigator.pop(context);
                    AutoRouter.of(context).replace(const HomeRoute());
                  },
                ),
                ListTile(
                  title: const Text("Add Vehicle"),
                  leading: const Icon(FontAwesomeIcons.plusCircle),
                  onTap: () {
                    Navigator.pop(context);
                    AutoRouter.of(context).push(const AddVehicleRoute());
                  },
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.car),
                  title: const Text("My Vehicles"),
                  onTap: () {
                    Navigator.pop(context);
                    AutoRouter.of(context).push(const MyVehiclesRoute());
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.signOutAlt),
                  title: const Text("Logout"),
                  onTap: () async => await _homeBaseController.logout(context),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kBgColor,
        body: const AutoRouter(),
      ),
    );
  }
}
