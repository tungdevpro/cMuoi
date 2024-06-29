import 'package:cached_network_image/cached_network_image.dart';
import 'package:cmuoi/import.dart';
import 'package:cmuoi/ui/cover_place/bloc/cover_place_bloc.dart';

class CoverPlacePage extends StatefulWidget {
  const CoverPlacePage({super.key});

  @override
  State<CoverPlacePage> createState() => _CoverPlacePageState();
}

class _CoverPlacePageState extends CoreBindingState<CoverPlacePage, CoverPlaceBloc> {
  @override
  CoverPlaceBloc get initBloc => di.get();

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CachedNetworkImage(imageUrl: 'https://i.ibb.co/rpR06bS/7b73edd758abcf2de3cc19321bd2f12a.jpg', fit: BoxFit.cover),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSize.paddingXL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coffee Bean',
                        style: AppTypography.semiBoldType32.copyWith(color: Colors.white),
                      ),
                      const Gap(AppSize.paddingSM),
                      Text(
                        'Hanoi, Vietnam',
                        style: AppTypography.mediumType12.copyWith(color: Colors.white),
                      ),
                      const Gap(AppSize.paddingSM),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            S.current.total_people_have_explored(100),
                            style: AppTypography.mediumType12.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const Gap(AppSize.paddingSM),
                      const Divider(color: Colors.white),
                      const Text(
                        "Bali is an island in Indonesia known for its verdant volcanoes, unique rice terraces, beaches, and beautiful coral reefs. Before becoming a tourist attraction, Kuta was a trading port where local products were traded to buyers from outside Bali.",
                        style: TextStyle(color: Colors.white, fontSize: 12, height: 24 / 12),
                      ),
                      const Gap(36),
                      AppButton(
                        onTap: () {},
                        title: S.current.see_more,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 10,
            child: SafeArea(
                child: IconButton(
              onPressed: () => AppNavigator.shared.close(),
              icon: Assets.icons.arrowLeft.svg(width: 24, colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
            )),
          )
        ],
      ),
    );
  }
}
