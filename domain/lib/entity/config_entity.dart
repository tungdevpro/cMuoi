import 'package:json_annotation/json_annotation.dart';

part 'config_entity.g.dart';

@JsonSerializable()
class ConfigEntity {
  final String name;

  ConfigEntity({required this.name});

  factory ConfigEntity.fromJson(Map<String, dynamic> json) => _$ConfigEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigEntityToJson(this);
}
