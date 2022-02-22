import 'package:json_annotation/json_annotation.dart';

class StringToDoubleConversion implements JsonConverter<double?, dynamic> {
  const StringToDoubleConversion();
  @override
  double? fromJson(dynamic json) => double.tryParse(json.toString());

  @override
  String toJson(double? object) => object.toString();
}
