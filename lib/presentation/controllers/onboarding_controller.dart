import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  void nextPage(){
    if(currentPage.value < 2){
      currentPage.value++;
    }
  }

  void skip(){
    //navigate to home
    Get.offAllNamed('/home');
  }
}