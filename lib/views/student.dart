import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/studentdatacontroller.dart';
import 'package:flutter_application_1/models/studentmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// var name = ['John Doe', 'me'];
StudentController studentController = Get.put(StudentController());

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(children: [
          studentController.loadingStudentData.value
              ? CircularProgressIndicator()
              : ElevatedButton(onPressed: () {}, child: Text("Get Students")),
          ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text("${index + 1}"),
                    Text(studentController.studentList[index].username),
                    Text(studentController.studentList[index].email),
                  ],
                );
              })
        ]));
  }

  Future<void>? getStudents() async {
    http.Response response = await http
        .get(Uri.parse('https:class-26.com/Getonto_Students/read.php'));
    studentController.updateLoadingStudentData(false);

    if (response.statusCode == 200) {
      var studentResponse = jsonDecode(response.body);
      var studentDataResponse = studentResponse['data'];
      var newList = studentDataResponse
          .map((student) => StudentModel.fromJson(student))
          .toList();

      studentController.updateStudentList(newList);
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
