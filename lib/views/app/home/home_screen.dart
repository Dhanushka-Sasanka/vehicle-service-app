import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/routes/app_router.gr.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/constants.dart';
import 'package:vehicle_app/views/app/home/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final HomeController _homeController = Get.put(HomeController());

  @override
  void dispose() {
    Get.delete<HomeController>();
    super.dispose();
  }

  @override
  void disChangeDependencies() {
    super.didChangeDependencies();
    print(context.router.topRoute.name);
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: ImageSlideshow(
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            children: [
              Image.asset(
                'assets/images/image_slider_image1.jpeg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/image_slider_image2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/image_slider_image3.jpg',
                fit: BoxFit.cover,
              ),
            ],
            autoPlayInterval: 3000,
            isLoop: true,
          ),
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(defaultPaddingX2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      border: Border.all(color: kBorderColor),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    child: ListTile(
                      title: const Text("Add New Appointments"),
                      leading: const Icon(
                        FontAwesomeIcons.solidCalendarPlus,
                        size: 50,
                      ),
                      onTap: () => AutoRouter.of(context)
                          .push(const AddAppointmentRoute()),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      border: Border.all(color: kBorderColor),
                      borderRadius: BorderRadius.circular(defaultBorderRadius),
                    ),
                    child: ListTile(
                      title: const Text("View Your Appointments"),
                      leading: const Icon(
                        FontAwesomeIcons.solidCalendarCheck,
                        size: 50,
                      ),
                      onTap: () => AutoRouter.of(context)
                          .push(const AppointmentHistoryRoute()),
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
