class LoginPhoneDto {
  String? phone;
  String? password;

  LoginPhoneDto({this.phone, this.password});

  LoginPhoneDto.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['password'] = password;
    return data;
  }
}
