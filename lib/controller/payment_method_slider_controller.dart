import 'package:get/get.dart';

class PaymentMethodSliderController extends GetxController{

  RxInt currentIndex = 0.obs;

  onPageChange(int value){
    currentIndex.value = value;
  }

}