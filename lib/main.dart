import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/constants.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextField.dart';

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
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          label: "DU App",
          labelColor: appWhiteColor,
          fontSize: 28,
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(
                  label: "Login Screen",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                label: "Username",
                labelColor: Colors.blue,
              ),
            ),
            CustomTextField(
                customTextFieldController: usernameController,
                hintText: "Enter your username",
                prefixIcon: const Icon(Icons.person)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(label: "Password"),
            ),
            CustomTextField(
              customTextFieldController: passwordController,
              hintText: "Enter your password",
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility),
            ),
            // const CustomTextButton(
            //   buttonName: "Log In",
            // )
          ]),
    );
  }
}
