import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/constants.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customField.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    final TextEditingController PasswordContoller = TextEditingController();
    final TextEditingController UsernameContoller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          label: "DU App",
          labelColor: appWhiteColor,
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
      ),
      body:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomText(
            label: "Login Screen", fontSize: 30, fontWeight: FontWeight.bold),
        CustomText(
          label: "Username",
         // CustomTextField(controller: UsernameContoller,),
          labelColor: primaryColor,
        ),
        CustomText(label: "Password"),
       // CustomTextField(controller: PasswordContoller,)
      ]),
    );
  }
}

