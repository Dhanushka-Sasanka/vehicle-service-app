import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:vehicle_app/utils/colors.dart';
import 'package:vehicle_app/utils/constants.dart';

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
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => FormBuilder(
        key: _addVehicleController.formKey.value,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            FormBuilderDropdown(
              name: 'vehicleType',
              decoration: const InputDecoration(
                labelText: 'Vechicle Type',
              ),
              allowClear: true,
              hint: const Text('Select Vehicle Type'),
              validator: FormBuilderValidators.compose(
                  [FormBuilderValidators.required(context)]),
              items: _addVehicleController.vehicleTypes
                  .map((vehicleType) => DropdownMenuItem(
                        value: vehicleType,
                        child: Text(vehicleType),
                      ))
                  .toList(),
            ),
            FormBuilderTextField(
              name: 'regNo',
              decoration: const InputDecoration(
                labelText: 'Vehicle Reg No',
              ),
              validator: FormBuilderValidators.compose(
                  [FormBuilderValidators.required(context)]),
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
                        await _addVehicleController.addVehicle(context),
                    child: Row(
                      children: const [
                        Text("Add Vehicle"),
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
