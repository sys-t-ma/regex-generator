import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:libadwaita/libadwaita.dart';

class InputTextFluent extends StatelessWidget {
  final String labelText;
  final String hintText;

  final bool obscureText;
  final TextInputType keyboardType;

  const InputTextFluent({
    Key? key,
    required this.labelText,
    this.hintText = '',
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextBox(
      // controller: ...,
      header: labelText,
      placeholder: hintText,
      keyboardType: TextInputType.text,
      obscureText: obscureText,
    );
  }
}

class InputTextGtk extends StatelessWidget {
  final String labelText;
  final String hintText;

  final bool obscureText;
  final TextInputType keyboardType;

  const InputTextGtk({
    Key? key,
    required this.labelText,
    this.hintText = '',
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdwHeaderBar(
          title: Text(labelText),
        ),
        const AdwTextField(
          prefixIcon: Icons.access_alarm,
          keyboardType: TextInputType.text,
        )
      ],
    );
  }
}
