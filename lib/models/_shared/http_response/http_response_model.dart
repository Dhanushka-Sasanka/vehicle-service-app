import 'package:freezed_annotation/freezed_annotation.dart';
part 'http_response_model.freezed.dart';
part 'http_response_model.g.dart';

//{status:bool,message:string,data:dynamic}
@freezed
class HTTPResponseModel with _$HTTPResponseModel {
  const factory HTTPResponseModel({
    required bool status,
    @Default('') String message,
    dynamic data,
  }) = _HTTPResponseModel;

  factory HTTPResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HTTPResponseModelFromJson(json);
}
