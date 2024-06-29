import 'dart:async';

import 'package:cmuoi/ui/home/bloc/home_bloc.dart';
import 'package:cmuoi/ui/home/bloc/home_event.dart';
import 'package:cmuoi/ui/home/component/list_home_content.dart';
import 'package:cmuoi/import.dart';

import 'component/animated_header_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends CoreBindingState<HomePage, HomeBloc> {
  @override
  HomeBloc get initBloc => di<HomeBloc>();

  late final ScrollController _scrollController = ScrollController()..addListener(_onListener);
  late final ValueNotifier<bool> displayHeaderNotifier = ValueNotifier(false);

  final double _space = 256;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    bloc.add(GetYourCardBalanceEvent(completer: Completer<bool>()));
    bloc.add(GetTheLatestPromotionInformationEvent());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    displayHeaderNotifier.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Stack(
        children: [
          ListHomeContent(scrollController: _scrollController),
          ValueListenableBuilder<bool>(
            valueListenable: displayHeaderNotifier,
            builder: (_, displayHeader, child) {
              return AnimatedPositioned(
                duration: const ShortDuration(),
                top: !displayHeader ? -(MediaQuery.of(context).padding.top + kToolbarHeight) : 0,
                child: child ?? const SizedBox.shrink(),
              );
            },
            child: const AnimatedHeaderWidget(),
          ),
        ],
      ),
    );
  }

  void _onListener() {
    if (_scrollController.position.pixels >= _space) {
      if (displayHeaderNotifier.value) return;
      displayHeaderNotifier.value = true;
    } else {
      if (!displayHeaderNotifier.value) return;
      displayHeaderNotifier.value = false;
    }
  }
}
