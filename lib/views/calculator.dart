import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/calculatorcontroller.dart';
import 'package:flutter_application_1/views/customButton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextField.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNumber = TextEditingController();
    TextEditingController secondNumber = TextEditingController();
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
      child: Column(
        children: [
          CustomText(label: "Calculator", fontSize: 30),
          CustomTextField(
              Controller: firstNumber, hintText: "Enter first number"),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
              Controller: secondNumber, hintText: "Enter second number"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                double a = double.parse(firstNumber.text);
                double b = double.parse(secondNumber.text);

                double s = a + b;
                calculatorController.updateSum(s);
                calculatorController.update([a]);
                calculatorController.update([b]);
              },
              child: const Text("Add")),
          SizedBox(height: 10),
          Obx(() => CustomText(
              label:
                  " The Sum of ${calculatorController.firstNumber} and ${calculatorController.secondNumber} is: ${calculatorController.sum} ",
              fontSize: 20)),
        ],
      ),
    );
  }
}
