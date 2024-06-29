import '../../enum/gender.dart';

class UserInfoEntity {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final Gender gender;
  final String image;

  UserInfoEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
  });

  @override
  String toString(){
    return "$id, $username, $email, $firstName, $lastName, $gender, $image, ";
  }
}
