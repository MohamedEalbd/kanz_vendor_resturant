import 'package:hamy_yamy/features/auth/controllers/auth_controller.dart';
import 'package:hamy_yamy/helper/route_helper.dart';
import 'package:hamy_yamy/common/widgets/custom_snackbar_widget.dart';
import 'package:get/get.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if(response.statusCode == 401) {
      Get.find<AuthController>().clearSharedData();
      Get.offAllNamed(RouteHelper.getSignInRoute());
    }else {
      showCustomSnackBar(response.statusText);
    }
  }
}