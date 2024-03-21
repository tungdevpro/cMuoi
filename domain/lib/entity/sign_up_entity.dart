import 'package:json_annotation/json_annotation.dart';

part 'sign_up_entity.g.dart';

@JsonSerializable()
class SignUpEntity {
  final String otp;

  SignUpEntity({required this.otp});

  factory SignUpEntity.fromJson(Map<String, dynamic> json) => _$SignUpEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SignUpEntityToJson(this);
}
