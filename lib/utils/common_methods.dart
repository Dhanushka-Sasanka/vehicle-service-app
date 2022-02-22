import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:vehicle_app/utils/colors.dart';

class CommonMethods {
  static Widget get getDefaultHSpace => const SizedBox(
        height: 10,
      );
  static Widget get getDefaultLoader => const Center(
        child: SpinKitFadingCube(color: kPrimaryColor),
      );
  static Widget get getDefaultCacheLoader => const Center(
        child: CircularProgressIndicator(),
      );
}
