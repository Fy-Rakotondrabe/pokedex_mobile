import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_mobile/injection.dart';
import 'package:pokedex_mobile/presentation/bloc/common_bloc/common_bloc.dart';
import 'package:pokedex_mobile/presentation/routes/route.dart';
import 'package:pokedex_mobile/presentation/themes/app_theme.dart';
import 'package:pokedex_mobile/single_bloc_observer.dart';

void main() async {
  await init();
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: WillPopScope(
        onWillPop: () {
          Navigator.pop(context);
          return Future(() => true);
        },
        child: BlocBuilder<CommonBloc, CommonState>(
          builder: (context, state) {
            return MaterialApp(
              theme: appThemeData[state.currentTheme],
              initialRoute: AppRoute.initial,
              routes: AppRoute.routes,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
