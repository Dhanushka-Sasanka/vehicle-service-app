import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/constants.dart';

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
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => FormBuilder(
        key: _addAppointmentController.formKey.value,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            FormBuilderDropdown(
              name: 'vehicle',
              decoration: const InputDecoration(
                labelText: 'Vechicle',
              ),
              allowClear: true,
              hint: const Text('Select Vehicle'),
              validator: FormBuilderValidators.compose(
                  [FormBuilderValidators.required(context)]),
              items: _addAppointmentController.vehicles
                  .map((vehicle) => DropdownMenuItem(
                        value: vehicle.vehicleID,
                        child: Text(vehicle.regNo),
                      ))
                  .toList(),
            ),
            FormBuilderDropdown(
              name: 'service',
              decoration: const InputDecoration(
                labelText: 'Service',
              ),
              allowClear: true,
              hint: const Text('Select Service'),
              validator: FormBuilderValidators.compose(
                  [FormBuilderValidators.required(context)]),
              items: _addAppointmentController.services
                  .map((service) => DropdownMenuItem(
                        value: service.serviceID,
                        child: Text(service.serviceType),
                      ))
                  .toList(),
              onChanged: _addAppointmentController.selectService,
            ),
            FormBuilderTextField(
              name: 'servicePrice',
              decoration: const InputDecoration(
                labelText: 'Service price',
              ),
              enabled: false,
            ),
            FormBuilderDateTimePicker(
              name: 'pickDate',
              // onChanged: _onChanged,
              inputType: InputType.both,
              decoration: const InputDecoration(
                labelText: 'Appointment Date',
              ),
              initialValue: DateTime.now(),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPaddingX2, bottom: defaultPaddingX2),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kButtonBgColor),
                    onPressed: () async =>
                        await _addAppointmentController.addAppointment(context),
                    child: Row(
                      children: const [
                        Text("Add Appointment"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(FontAwesomeIcons.signOutAlt)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
