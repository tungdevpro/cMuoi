import 'package:json_annotation/json_annotation.dart';
part 'sign_up_email_dto.g.dart';

@JsonSerializable()
class SignUpEmailDTO {
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;

  SignUpEmailDTO({
    this.email,
    this.password,
  });

  factory SignUpEmailDTO.fromJson(Map<String, dynamic> json) => _$SignUpEmailDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpEmailDTOToJson(this);
}
