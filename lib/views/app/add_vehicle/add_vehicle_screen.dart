import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_vehicle_controller.dart';

class AddVehicleScreen extends StatefulWidget {
  const AddVehicleScreen({Key? key}) : super(key: key);

  @override
  _AddVehicleScreenState createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
  @override
  void dispose() {
    Get.delete<AddVehicleController>();
    super.dispose();
  }

  final _addVehicleController = Get.put(AddVehicleController());
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
