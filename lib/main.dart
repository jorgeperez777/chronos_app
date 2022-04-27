import 'package:chronos_app/screens/home.dart';
import 'package:chronos_app/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chronos_app/tenants/globals.dart' as GLOBALS;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            title: GLOBALS.titleApp,
            themeMode: themeProvider.themeMode,
            theme: ThemeApp.lightTheme,
            darkTheme: ThemeApp.darkTheme,
            home: Home());
      },
    );
  }
}
