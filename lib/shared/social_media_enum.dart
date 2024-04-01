import 'package:express_cart/common/common.dart';

enum SocialMedia {
  facebook('facebook', ImageResource.facebook),
  google('google', ImageResource.google),
  twitter('twitter', ImageResource.twitter);

  const SocialMedia(this.code, this.image);
  final String code;
  final String image;
}
