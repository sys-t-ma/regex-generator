import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';
import 'package:regex_generator/src/shared/core/app_assets.dart';
import 'package:regex_generator/src/shared/widgets/input_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const Ui = String.fromEnvironment('UI', defaultValue: 'fluent');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdwScaffold(
          body: Container(
        alignment: Alignment.center,
        child: Column(
          children: const [
            AdwAvatar(
              child: Text('Desgraça'),
              backgroundColor: AdwColors.cyan,
            ),
            InputTextGtk(labelText: 'Teste'),
            // InputTextFluent(labelText: 'Teste Fluent')
          ],
        ),
      )),
    );
  }
}
