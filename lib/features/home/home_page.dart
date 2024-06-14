import 'package:express_cart/common/common.dart';
import 'package:express_cart/features/home/bloc/home_bloc.dart';
import 'package:express_cart/features/home/component/list_home_content.dart';
import 'package:express_cart/import.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends CoreBindingState<HomePage, HomeBloc> {
  @override
  HomeBloc get initBloc => di<HomeBloc>();

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Stack(
        children: [
          ListHomeContent(),
        ],
      ),
    );
  }
}
