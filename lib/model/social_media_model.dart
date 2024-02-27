import 'package:equatable/equatable.dart';

class SocialMediaModel with EquatableMixin {
  String? name;
  String? code;
  String? image;

  SocialMediaModel({
    this.name,
    this.code,
    this.image,
  });

  @override
  List<Object?> get props => [name, code, image];
}
