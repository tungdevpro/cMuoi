import 'package:cmuoi/features/home/component/box_label_widget.dart';
import 'package:cmuoi/import.dart';

class MyRewardWidget extends StatelessWidget {
  const MyRewardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxLabelWidget(
      label: S.current.my_reward,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSize.paddingLG, horizontal: AppSize.padding),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(AppSize.radius)),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.radiusCircle),
                child: Container(
                  width: 48,
                  height: 48,
                  color: AppColor.primaryLight200,
                ),
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Free 1 coffee",
                    style: AppTypography.semiBoldType16,
                  ),
                  const Gap(4),
                  Text("Buy 10 Coffees and get 1 Coffee for free", style: AppTypography.regularType12),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
