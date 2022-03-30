import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:adwaita/adwaita.dart';
import 'package:provider/provider.dart';
import 'package:regex_generator/src/shared/core/models/app_state.store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Provider.of<AppProvider>(context).darkTheme;
    // bool isDark = true;

    return MaterialApp(
      theme: AdwaitaThemeData.light(),
      darkTheme: AdwaitaThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: AdwScaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            AdwButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Provider.of<AppProvider>(context, listen: false).changeTheme();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
