class StudentModel {
  final String username;
  final String email;

  StudentModel({required this.username, required this.email});
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      username: json['username'],
      email: json['email'],
    );
  }
}
