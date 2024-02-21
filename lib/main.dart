import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/route.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes));
}
