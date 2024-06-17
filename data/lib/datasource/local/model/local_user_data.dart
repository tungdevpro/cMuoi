import 'package:floor/floor.dart';

@Entity()
class LocalUserData {
  @primaryKey
  final int id;

  final String firstName;
  final String lastName;
  final int age;

  LocalUserData({required this.id, required this.firstName, required this.lastName, required this.age});
}
