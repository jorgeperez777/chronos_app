import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kLightPrimaryColor = Color(0xFFFFFFFF);

const kLightSecondaryColor = Color(0xFFF3F7FB);
const kAccentColor = Color(0xFFFFC107);

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class ThemeApp {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'SFProText',
    primaryColor: kDarkPrimaryColor,
    backgroundColor: Color(0xFF212121),
    accentColor: Color(0xFFFd3041a),
    scaffoldBackgroundColor: Color(0xFF212121),
    cardColor: Color(0xFF212121),
    iconTheme: ThemeData.dark().iconTheme.copyWith(
          color: kLightSecondaryColor,
        ),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'SFProText',
          bodyColor: kLightSecondaryColor,
          displayColor: kLightSecondaryColor,
        ),
  );

  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Color(0xFFFd3041a),
        brightness: Brightness.dark,
        textTheme: TextTheme(
            title: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold))),
    brightness: Brightness.light,
    fontFamily: 'SFProText',
    primaryColor: kLightPrimaryColor,

    // canvasColor: Colors.transparent,
    // canvasColor: kLightPrimaryColor,
    backgroundColor: Color(0xFFF4F4F4),
    accentColor: Color(0xFFFd3041a),
    cardColor: Color(0xFFF4F4F4),
    iconTheme: ThemeData.light().iconTheme.copyWith(
          color: kDarkSecondaryColor,
        ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'SFProText',
          bodyColor: kDarkSecondaryColor,
          displayColor: kDarkSecondaryColor,
        ),
  );
}
