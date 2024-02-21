import 'package:flutter_application_1/views/Home.dart';
import "package:get/get.dart";
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/calculator.dart';

class Routes {
 static var routes = [
    GetPage(name: '/', page: () => Login()),
    GetPage(name: '/home', page: () => Home()),
    GetPage(name: '/calculator', page: () => Calculator()),
  ];
}
