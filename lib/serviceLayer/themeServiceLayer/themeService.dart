import '../../model/themeModel/themeModel.dart';

class ThemeService {
  // Singleton pattern
  static final ThemeService _instance = ThemeService._internal();
  factory ThemeService() => _instance;
  ThemeService._internal();

  // Default theme
  ThemeModel _theme = ThemeModel(isDarkMode: false);

  ThemeModel get theme => _theme;

  void toggleTheme() {
    _theme = ThemeModel(isDarkMode: !_theme.isDarkMode);
    // You can add logic here to save the theme preference if needed
  }
}
