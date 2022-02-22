import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class ApiConfig {

  const ApiConfig({
    required this.baseApiUrl,
    required this.userApis,
  });

  final String baseApiUrl;
  final UserApis userApis;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    baseApiUrl: json['base_api_url'] as String,
    userApis: UserApis.fromJson(json['user_apis'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'base_api_url': baseApiUrl,
    'user_apis': userApis.toJson()
  };

  ApiConfig clone() => ApiConfig(
    baseApiUrl: baseApiUrl,
    userApis: userApis.clone()
  );


  ApiConfig copyWith({
    String? baseApiUrl,
    UserApis? userApis
  }) => ApiConfig(
    baseApiUrl: baseApiUrl ?? this.baseApiUrl,
    userApis: userApis ?? this.userApis,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && baseApiUrl == other.baseApiUrl && userApis == other.userApis;

  @override
  int get hashCode => baseApiUrl.hashCode ^ userApis.hashCode;
}

@immutable
class UserApis {

  const UserApis({
    required this.registerUser,
    required this.loginUser,
    required this.requestOtp,
    required this.verifyOtp,
  });

  final String registerUser;
  final String loginUser;
  final String requestOtp;
  final String verifyOtp;

  factory UserApis.fromJson(Map<String,dynamic> json) => UserApis(
    registerUser: json['register_user'] as String,
    loginUser: json['login_user'] as String,
    requestOtp: json['request_otp'] as String,
    verifyOtp: json['verify_otp'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'register_user': registerUser,
    'login_user': loginUser,
    'request_otp': requestOtp,
    'verify_otp': verifyOtp
  };

  UserApis clone() => UserApis(
    registerUser: registerUser,
    loginUser: loginUser,
    requestOtp: requestOtp,
    verifyOtp: verifyOtp
  );


  UserApis copyWith({
    String? registerUser,
    String? loginUser,
    String? requestOtp,
    String? verifyOtp
  }) => UserApis(
    registerUser: registerUser ?? this.registerUser,
    loginUser: loginUser ?? this.loginUser,
    requestOtp: requestOtp ?? this.requestOtp,
    verifyOtp: verifyOtp ?? this.verifyOtp,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is UserApis && registerUser == other.registerUser && loginUser == other.loginUser && requestOtp == other.requestOtp && verifyOtp == other.verifyOtp;

  @override
  int get hashCode => registerUser.hashCode ^ loginUser.hashCode ^ requestOtp.hashCode ^ verifyOtp.hashCode;
}
