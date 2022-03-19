import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_app/models/appointment/appointment_model.dart';
import 'package:vehicle_app/utils/constants.dart';

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
    return Obx(() => _appointmentHistoryController.myAppointments.isNotEmpty
        ? ListView.builder(
            itemCount: _appointmentHistoryController.myAppointments.length,
            itemBuilder: (context, index) {
              AppointmentDataModel appointmentModel =
                  _appointmentHistoryController.myAppointments[index];
              return Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Card(
                  child: ListTile(
                    title: Text(appointmentModel.serviceID),
                    subtitle: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Text(DateFormat('yyyy-MM-dd HH:mm')
                                .format(appointmentModel.date))),
                        Expanded(child: Text("LKR: ${appointmentModel.price}")),
                      ],
                    ),
                    trailing: Text(appointmentModel.status),
                  ),
                ),
              );
            })
        : const Center(
            child: Text("No Items to show."),
          ));
  }
}
