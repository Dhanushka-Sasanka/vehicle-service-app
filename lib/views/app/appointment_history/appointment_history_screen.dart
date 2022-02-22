import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'appointment_history_controller.dart';

class AppointmentHistoryScreen extends StatefulWidget {
  const AppointmentHistoryScreen({Key? key}) : super(key: key);

  @override
  _AppointmentHistoryScreenState createState() =>
      _AppointmentHistoryScreenState();
}

class _AppointmentHistoryScreenState extends State<AppointmentHistoryScreen> {
  final _appointmentHistoryController = Get.put(AppointmentHistoryController());

  @override
  void dispose() {
    Get.delete<AppointmentHistoryController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
