import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(245, 118, 17, 212);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.cyan,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(
          selectedColor >= 0 && selectedColor < _colorThemes.length,
          'Colors must be between 0 and ${_colorThemes.length - 1}',
        );

  ThemeData theme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        // brightness: Brightness.dark,
      );
}
