import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_vehicles_controller.dart';

class MyVehiclesScreen extends StatefulWidget {
  const MyVehiclesScreen({Key? key}) : super(key: key);

  @override
  _MyVehiclesScreenState createState() => _MyVehiclesScreenState();
}

class _MyVehiclesScreenState extends State<MyVehiclesScreen> {
  final _myVehiclesController = Get.put(MyVehiclesController());

  @override
  void dispose() {
    Get.delete<MyVehiclesController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
