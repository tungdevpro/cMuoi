import '../enum/gender.dart';

class LoginEntity {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final Gender gender;
  final String image;
  final String token;
  final String refreshToken;

  LoginEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required this.token,
    required this.refreshToken,
  });
}
