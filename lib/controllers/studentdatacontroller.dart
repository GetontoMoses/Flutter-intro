import 'package:get/get.dart';

class StudentController extends GetxController{
  final studentList = [].obs;
final loadingStudentData = true.obs;
updateStudentList(List){
  studentList.assignAll(List);}

updateLoadingStudentData(loading){
  loadingStudentData.value = loading;
}
}