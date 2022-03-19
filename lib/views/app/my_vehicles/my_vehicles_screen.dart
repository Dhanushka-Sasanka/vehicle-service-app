import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/models/vehicle/vehicle_model.dart';
import 'package:vehicle_app/utils/constants.dart';

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
    return Obx(() => _myVehiclesController.myVehicles.isNotEmpty
        ? ListView.builder(
            itemCount: _myVehiclesController.myVehicles.length,
            itemBuilder: (context, index) {
              VehicleModel vehicleModel =
                  _myVehiclesController.myVehicles[index];
              return Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Card(
                  child: ListTile(
                    title: Text(vehicleModel.regNo),
                    subtitle: Text(vehicleModel.vehicleType),
                  ),
                ),
              );
            })
        : const Center(
            child: Text("No Items to show"),
          ));
  }
}
