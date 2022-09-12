import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_config_bloc/app_config.dart';
import 'app_config_bloc/app_config_bloc.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(
    BlocProvider<AppConfigBloc>(
      create: (_) => AppConfigBloc(appConfig: const AppConfig.defaultConfig()),
      child: const StopwatchApp(),
    ),
  );
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle overlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark);

    return BlocBuilder<AppConfigBloc, AppConfig>(
      builder: (_, state) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: state.themeColor,
            appBarTheme: AppBarTheme(
              systemOverlayStyle: overlayStyle,
            )),
        home: const HomePage(),
      ),
    );
  }
}
