import 'package:flutter/material.dart';

part 'text_theme.dart';

final ThemeData _appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  accentColor: Colors.blue,
  fontFamily: 'Georgia',
  textTheme: _textTheme,
);

final ThemeData _darkAppTheme = ThemeData.dark();

class Themes {
  static final ThemeData light = _appThemeData;
  static final ThemeData dark = _darkAppTheme;
}
