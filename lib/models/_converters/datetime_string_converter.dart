import 'package:json_annotation/json_annotation.dart';

class DateTimeStringConversion implements JsonConverter<DateTime, String> {
  const DateTimeStringConversion();
  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
