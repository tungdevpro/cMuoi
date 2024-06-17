class LoginUsernameDto {
  String? username;
  String? password;

  LoginUsernameDto({
    this.username,
    this.password,
  });

  factory LoginUsernameDto.fromJson(Map<String, dynamic> json) => LoginUsernameDto(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}
