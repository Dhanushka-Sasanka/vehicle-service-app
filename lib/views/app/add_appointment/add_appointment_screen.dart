import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_appointment_controller.dart';

class AddAppointmentScreen extends StatefulWidget {
  const AddAppointmentScreen({Key? key}) : super(key: key);

  @override
  _AddAppointmentScreenState createState() => _AddAppointmentScreenState();
}

class _AddAppointmentScreenState extends State<AddAppointmentScreen> {
  @override
  void dispose() {
    Get.delete<AddAppointmentController>();
    super.dispose();
  }

  final _addAppointmentController = Get.put(AddAppointmentController());
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
