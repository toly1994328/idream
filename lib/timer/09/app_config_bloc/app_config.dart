import 'dart:ui';

class AppConfig {
  final Color themeColor;

  const AppConfig({required this.themeColor});

  const AppConfig.defaultConfig() : themeColor = const Color(0xff3BBD5B);

  AppConfig copyWith(Color? color) {
    return AppConfig(themeColor: color ?? themeColor);
  }
}
