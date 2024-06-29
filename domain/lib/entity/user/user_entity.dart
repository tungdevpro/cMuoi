import 'package:domain/domain.dart';

class UserEntity {
  final int id;
  final String firstName;
  final String lastName;
  final String maidenName;
  final int age;
  final Gender gender;
  final String email;
  final String phone;
  final String username;
  final String password;
  final DateTime birthDate;
  final String image;
  // final String bloodGroup;
  // final double height;
  // final double weight;
  // final String eyeColor;
  // final Hair hair;
  // final String ip;
  // final Address address;
  // final String macAddress;
  // final String university;
  // final Bank bank;
  // final Company company;
  // final String ein;
  // final String ssn;
  // final String userAgent;
  // final Crypto crypto;
  final UserRole role;

  UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.maidenName,
    required this.age,
    required this.gender,
    required this.email,
    required this.phone,
    required this.username,
    required this.password,
    required this.birthDate,
    required this.image,
    // required this.bloodGroup,
    // required this.height,
    // required this.weight,
    // required this.eyeColor,
    // required this.hair,
    // required this.ip,
    // required this.address,
    // required this.macAddress,
    // required this.university,
    // required this.bank,
    // required this.company,
    // required this.ein,
    // required this.ssn,
    // required this.userAgent,
    // required this.crypto,
    required this.role,
  });

  factory UserEntity.empty() {
    return UserEntity(
      id: idEmpty,
      firstName: stringEmpty,
      lastName: stringEmpty,
      maidenName: stringEmpty,
      age: 0,
      gender: Gender.female,
      email: stringEmpty,
      phone: stringEmpty,
      username: stringEmpty,
      password: stringEmpty,
      birthDate: DateTime.now(),
      image: stringEmpty,
      role: UserRole.user,
    );
  }
}

