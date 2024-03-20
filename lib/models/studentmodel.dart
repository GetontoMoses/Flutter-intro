class StudentModel {
  final String username;
  final String email;
  final String image;

  StudentModel({required this.username, required this.email, required this.image});
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      username: json['username']??'',
      email: json['email']??'',
      image: json['image']??'',
    );
  }
}
