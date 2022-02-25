import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';






@immutable
class ApiConfig {

  const ApiConfig({
    required this.baseApiUrl,
    required this.userApis,
    required this.appointmentApis,
    required this.serviceApis,
    required this.vehicleApis,
  });

  final String baseApiUrl;
  final UserApis userApis;
  final AppointmentApis appointmentApis;
  final ServiceApis serviceApis;
  final VehicleApis vehicleApis;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    baseApiUrl: json['base_api_url'] as String,
    userApis: UserApis.fromJson(json['user_apis'] as Map<String, dynamic>),
    appointmentApis: AppointmentApis.fromJson(json['appointment_apis'] as Map<String, dynamic>),
    serviceApis: ServiceApis.fromJson(json['service_apis'] as Map<String, dynamic>),
    vehicleApis: VehicleApis.fromJson(json['vehicle_apis'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'base_api_url': baseApiUrl,
    'user_apis': userApis.toJson(),
    'appointment_apis': appointmentApis.toJson(),
    'service_apis': serviceApis.toJson(),
    'vehicle_apis': vehicleApis.toJson()
  };

  ApiConfig clone() => ApiConfig(
    baseApiUrl: baseApiUrl,
    userApis: userApis.clone(),
    appointmentApis: appointmentApis.clone(),
    serviceApis: serviceApis.clone(),
    vehicleApis: vehicleApis.clone()
  );


  ApiConfig copyWith({
    String? baseApiUrl,
    UserApis? userApis,
    AppointmentApis? appointmentApis,
    ServiceApis? serviceApis,
    VehicleApis? vehicleApis
  }) => ApiConfig(
    baseApiUrl: baseApiUrl ?? this.baseApiUrl,
    userApis: userApis ?? this.userApis,
    appointmentApis: appointmentApis ?? this.appointmentApis,
    serviceApis: serviceApis ?? this.serviceApis,
    vehicleApis: vehicleApis ?? this.vehicleApis,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && baseApiUrl == other.baseApiUrl && userApis == other.userApis && appointmentApis == other.appointmentApis && serviceApis == other.serviceApis && vehicleApis == other.vehicleApis;

  @override
  int get hashCode => baseApiUrl.hashCode ^ userApis.hashCode ^ appointmentApis.hashCode ^ serviceApis.hashCode ^ vehicleApis.hashCode;
}

@immutable
class UserApis {

  const UserApis({
    required this.registerUser,
    required this.loginUser,
  });

  final String registerUser;
  final String loginUser;

  factory UserApis.fromJson(Map<String,dynamic> json) => UserApis(
    registerUser: json['register_user'] as String,
    loginUser: json['login_user'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'register_user': registerUser,
    'login_user': loginUser
  };

  UserApis clone() => UserApis(
    registerUser: registerUser,
    loginUser: loginUser
  );


  UserApis copyWith({
    String? registerUser,
    String? loginUser
  }) => UserApis(
    registerUser: registerUser ?? this.registerUser,
    loginUser: loginUser ?? this.loginUser,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is UserApis && registerUser == other.registerUser && loginUser == other.loginUser;

  @override
  int get hashCode => registerUser.hashCode ^ loginUser.hashCode;
}

@immutable
class AppointmentApis {

  const AppointmentApis({
    required this.getAllAppointments,
    required this.getAppointmentById,
    required this.addAppointment,
    required this.updateAppointment,
  });

  final String getAllAppointments;
  final String getAppointmentById;
  final String addAppointment;
  final String updateAppointment;

  factory AppointmentApis.fromJson(Map<String,dynamic> json) => AppointmentApis(
    getAllAppointments: json['get_all_appointments'] as String,
    getAppointmentById: json['get_appointment_by_id'] as String,
    addAppointment: json['add_appointment'] as String,
    updateAppointment: json['update_appointment'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'get_all_appointments': getAllAppointments,
    'get_appointment_by_id': getAppointmentById,
    'add_appointment': addAppointment,
    'update_appointment': updateAppointment
  };

  AppointmentApis clone() => AppointmentApis(
    getAllAppointments: getAllAppointments,
    getAppointmentById: getAppointmentById,
    addAppointment: addAppointment,
    updateAppointment: updateAppointment
  );


  AppointmentApis copyWith({
    String? getAllAppointments,
    String? getAppointmentById,
    String? addAppointment,
    String? updateAppointment
  }) => AppointmentApis(
    getAllAppointments: getAllAppointments ?? this.getAllAppointments,
    getAppointmentById: getAppointmentById ?? this.getAppointmentById,
    addAppointment: addAppointment ?? this.addAppointment,
    updateAppointment: updateAppointment ?? this.updateAppointment,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is AppointmentApis && getAllAppointments == other.getAllAppointments && getAppointmentById == other.getAppointmentById && addAppointment == other.addAppointment && updateAppointment == other.updateAppointment;

  @override
  int get hashCode => getAllAppointments.hashCode ^ getAppointmentById.hashCode ^ addAppointment.hashCode ^ updateAppointment.hashCode;
}

@immutable
class ServiceApis {

  const ServiceApis({
    required this.getAllServices,
  });

  final String getAllServices;

  factory ServiceApis.fromJson(Map<String,dynamic> json) => ServiceApis(
    getAllServices: json['get_all_services'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'get_all_services': getAllServices
  };

  ServiceApis clone() => ServiceApis(
    getAllServices: getAllServices
  );


  ServiceApis copyWith({
    String? getAllServices
  }) => ServiceApis(
    getAllServices: getAllServices ?? this.getAllServices,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ServiceApis && getAllServices == other.getAllServices;

  @override
  int get hashCode => getAllServices.hashCode;
}

@immutable
class VehicleApis {

  const VehicleApis({
    required this.getAllVehicles,
    required this.addVehicle,
  });

  final String getAllVehicles;
  final String addVehicle;

  factory VehicleApis.fromJson(Map<String,dynamic> json) => VehicleApis(
    getAllVehicles: json['get_all_vehicles'] as String,
    addVehicle: json['add_vehicle'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'get_all_vehicles': getAllVehicles,
    'add_vehicle': addVehicle
  };

  VehicleApis clone() => VehicleApis(
    getAllVehicles: getAllVehicles,
    addVehicle: addVehicle
  );


  VehicleApis copyWith({
    String? getAllVehicles,
    String? addVehicle
  }) => VehicleApis(
    getAllVehicles: getAllVehicles ?? this.getAllVehicles,
    addVehicle: addVehicle ?? this.addVehicle,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is VehicleApis && getAllVehicles == other.getAllVehicles && addVehicle == other.addVehicle;

  @override
  int get hashCode => getAllVehicles.hashCode ^ addVehicle.hashCode;
}
