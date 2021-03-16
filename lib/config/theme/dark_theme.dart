part of './theme_config.dart';

abstract class DarkColors {
  static const Bastille = Color(0xFF191720);
  static const Aquamarine = Color(0xFF6FFED0);
}

var _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: DarkColors.Bastille,
  accentColor: DarkColors.Aquamarine,
  scaffoldBackgroundColor: Color(0xFF24232B),
);
