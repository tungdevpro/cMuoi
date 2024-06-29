

import 'package:domain/entity/user/user_address_entity.dart';

class Company {
  final String department;
  final String name;
  final String title;
  final Address address;

  Company({
    required this.department,
    required this.name,
    required this.title,
    required this.address,
  });
}