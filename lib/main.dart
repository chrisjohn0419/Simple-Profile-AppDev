import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:appdev/login/firebase_options.dart';
import 'package:appdev/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appdev/themes.dart';
import 'package:appdev/utils/user_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  await Firebase.initializeApp(
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  static const String title = 'User Profile';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          home: LoginPage(),
        ),
      ),
    );
  }
}
