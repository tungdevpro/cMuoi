import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class SocialMediaModel with EquatableMixin {
  String? name;
  String? code;
  Image? image;

  SocialMediaModel({
    this.name,
    this.code,
    this.image,
  });

  @override
  List<Object?> get props => [name, code, image];
}
