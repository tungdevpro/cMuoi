import 'package:cmuoi/features/coffee/bloc/coffee_bloc.dart';
import 'package:cmuoi/features/coffee/bloc/coffee_event.dart';
import 'package:cmuoi/import.dart';

class CoffeePage extends StatefulWidget {
  const CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends CoreBindingState<CoffeePage, CoffeeBloc> {

  @override
  CoffeeBloc get initBloc => di.get<CoffeeBloc>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.add(GetListCoffeeEvent());
  }

  @override
  Widget buildPage(BuildContext context) {
    // TODO: implement buildPage
    throw UnimplementedError();
  }
}
