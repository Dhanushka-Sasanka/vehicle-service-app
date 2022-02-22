import 'package:get/get.dart';
import 'package:vehicle_app/views/app/home_base_controller.dart';

class HomeController extends GetxController {
  //External Controllers
  final _homeBaseController = Get.find<HomeBaseController>();

  //Services
  // var _tokenManager = Get.find<TokenManager>();

  @override
  void onReady() {
    getData();
    super.onReady();
  }

  Future getData() async {}
}
