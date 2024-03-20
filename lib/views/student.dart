import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

var name = ['John Doe', 'me'];

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text("${index + 1}"),
                Text(name[index]),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    name.removeAt(index);
                  },
                )
              ],
            );
          })
    ]);
  }
  Future<void>? getStudents() async {
    http.Response response = await http.get(Uri.parse('https:class-26.com/Getonto_students/read.php'));
  }
}
