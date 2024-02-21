import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/homeController.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/student.dart';
import 'package:get/get.dart';

HomeController homeController = Get.put(HomeController());
var Screen = [
  Calculator(),
  Student()
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DU App"),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          buttonBackgroundColor: Colors.blue,
          color: Color.fromARGB(255, 48, 170, 236),
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Icon(Icons.settings)
          ],
          onTap: (index) {
            homeController.updateSelectedPage(index);
          },
        ),
        body: Obx(
          () => Center(child: Screen[homeController.selectedPage.value]),
        ));
  }
}
