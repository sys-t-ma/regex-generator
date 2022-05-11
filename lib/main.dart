import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regex_generator/src/modules/home/home_fluent_page.dart';
import 'package:regex_generator/src/modules/home/home_page.dart';
import 'package:regex_generator/src/shared/core/models/app_state.store.dart';

void main() {
  const Ui = String.fromEnvironment('UI', defaultValue: 'fluent');

  runApp(
    ChangeNotifierProvider<AppProvider>(
      create: (context) => AppProvider(),
      child: Ui == 'fluent' ? const HomeFluentPage() : const HomePage(),
    ),
    // HomePage()

    //   MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<AppProvider>(
    //       create: (context) => AppProvider(),
    //       child: HomePage(),
    //       // child: Ui == 'fluent' ? const HomeFluentPage() : const HomePage(),
    //     ),
    //   ],
    // )
  );
}
