import 'package:json_annotation/json_annotation.dart';

part 'user_info_entity.g.dart';

@JsonSerializable()
class UserInfoEntity {
  final String name;

  UserInfoEntity({required this.name});

  factory UserInfoEntity.fromJson(Map<String, dynamic> json) => _$UserInfoEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoEntityToJson(this);
}
