import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var sum = 0.0.obs;
  var firstNumber = 0.0.obs;
  var secondNumber = 0.0.obs;
  updateSum(double newSum) {
    sum.value =
        newSum; //some has other characteristics, but for now, we are only interested in the value
  }
  updateValues(double a, double b) {
    firstNumber.value = a;
    secondNumber.value = b;
  }
}
