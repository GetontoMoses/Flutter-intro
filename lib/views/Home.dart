import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/homeController.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/student.dart';
import 'package:get/get.dart';

HomeController homeController = Get.put(HomeController());

// Define the list of screens with the desired widgets
var screenList = [Calculator(), Student()];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homeController.selectedPage.value,
        onTap: (index) {
          homeController.selectedPage.value = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Student',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () =>
                  Center(child: screenList[homeController.selectedPage.value]),
            ),
          ),
        ],
      ),
    );
  }
}
