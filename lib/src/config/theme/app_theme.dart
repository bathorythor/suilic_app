import 'package:flutter/material.dart';

const Color _customColor1 = Color(0xFF0080ff);
const Color _customColor2 = Color(0xFFEEF1F3);
const Color _customColor3 = Color(0xFF000000);

const List<Color> _colorThemes = [
  _customColor1,
  _customColor2,
  _customColor3,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
