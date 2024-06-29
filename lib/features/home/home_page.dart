import 'dart:async';

import 'package:cmuoi/features/home/bloc/home_bloc.dart';
import 'package:cmuoi/features/home/bloc/home_event.dart';
import 'package:cmuoi/features/home/component/list_home_content.dart';
import 'package:cmuoi/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends CoreBindingState<HomePage, HomeBloc> {
  @override
  HomeBloc get initBloc => di<HomeBloc>();


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    bloc.add(GetYourCardBalanceEvent(completer: Completer<bool>()));
    bloc.add(GetTheLatestPromotionInformationEvent());
  }

  @override
  Widget buildPage(BuildContext context) {
    return const CommonScaffold(
      body: Stack(
        children: [
          ListHomeContent(),
        ],
      ),
    );
  }
}
