
class LoginModel{

  final String? name;
  final String? userId;
  final String? email;
  final String? dob;
  final String? phoneNumber;


  LoginModel({this.name,this.phoneNumber,this.dob,this.email,this.userId});

  factory LoginModel.fromJson(Map<String, dynamic> json){
    return LoginModel(
      name: json['Name'],
      userId: json['UserID'],
      email: json['Email'],
      dob: json['DOB'],
      phoneNumber: json['PhoneNumber'],
    );
  }


}