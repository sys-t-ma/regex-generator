import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regex_generator/src/modules/home/home_fluent_page.dart';
import 'package:regex_generator/src/modules/home/home_libadwaita_page.dart';
import 'package:regex_generator/src/shared/core/models/app_state.store.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppProvider>(
      create: (context) => AppProvider(),
      child:
          const String.fromEnvironment('UI', defaultValue: 'fluent') == 'fluent'
              ? const HomeFluentPage()
              : const HomeLibadwaitaPage(),
    ),
  );
}
