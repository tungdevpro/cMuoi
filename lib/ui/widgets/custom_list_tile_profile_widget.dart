import '../../import.dart';

class CustomListTileProfileWidget extends StatelessWidget {
  const CustomListTileProfileWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.subtitle,
    this.hasBorder = true,
    this.onTap,
  });

  final Widget icon;
  final String label;
  final String subtitle;
  final bool hasBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: !hasBorder ? null : const BoxDecoration(border: Border(bottom: BorderSide(color: AppColor.secondaryLight200))),
        padding: const EdgeInsets.only(bottom: AppSize.padding),
        margin: const EdgeInsets.only(bottom: AppSize.padding),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: AppColor.secondaryLight100, width: 1), borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.all(AppSize.paddingSM),
                child: icon,
              ),
              const Gap(AppSize.paddingSM),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(label, style: AppTypography.semiBoldType18), Text(subtitle)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
