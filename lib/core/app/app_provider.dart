import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chalked/config/theme/theme_config.dart';

final appProvider = ChangeNotifierProvider.autoDispose<AppState>(
  (ref) => AppState(),
);

class AppState extends ChangeNotifier {
  ThemeType currentTheme = ThemeType.Dark;
  ThemeData theme = ThemeMap[ThemeType.Dark];

  void toggleTheme() {
    if (currentTheme == ThemeType.Dark) {
      currentTheme = ThemeType.Light;
    } else {
      currentTheme = ThemeType.Dark;
    }

    theme = ThemeMap[currentTheme];
    notifyListeners();
  }
}
