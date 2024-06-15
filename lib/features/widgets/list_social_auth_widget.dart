import 'package:express_cart/import.dart';
import 'package:express_cart/model/social_media_model.dart';

class ListSocialAuthWidget extends StatelessWidget {
  const ListSocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SocialMediaModel(image: Assets.images.facebook.image(width: 32)),
      SocialMediaModel(image: Assets.images.google.image(width: 32)),
      SocialMediaModel(image: Assets.images.twitter.image(width: 32)),
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
          items.length,
          (index) => _buildItem(
                items[index],
                index == items.length - 1,
              )),
    );
  }

  Widget _buildItem(SocialMediaModel item, bool isLast) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.secondaryLight100),
        borderRadius: BorderRadius.circular(AppSize.radius),
      ),
      margin: isLast ? null : const EdgeInsets.only(right: 20),
      child: item.image,
    );
  }
}
