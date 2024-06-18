import 'package:domain/domain.dart';
import 'package:floor/floor.dart';

@Entity(tableName: 'User')
class LocalUserData {
  @primaryKey
  final int id;

  final String firstName;
  final String lastName;

  LocalUserData({
    required this.id,
    required this.firstName,
    required this.lastName,
  });
}
