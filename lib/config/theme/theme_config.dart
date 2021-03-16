import 'package:flutter/material.dart';

part './dark_theme.dart';
part './light_theme.dart';

enum ThemeType { Light, Dark }

final ThemeMap = {
  ThemeType.Dark: _darkTheme,
  ThemeType.Light: _lightTheme,
};
