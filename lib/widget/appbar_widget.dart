import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:appdev/login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:appdev/themes.dart';
import 'package:appdev/utils/user_preferences.dart';

AppBar buildAppBar(BuildContext context) {
  final user = UserPreferences.getUser();
  final isDarkMode = user.isDarkMode;
  final icon = isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;

  return AppBar(
    leading: IconButton(
      onPressed: () {
        Logout(context);
      },
  icon: const Icon(Icons.logout),
  ),
    backgroundColor: Colors.black,
    elevation: 0,
    actions: [
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

            final switcher = ThemeSwitcher.of(context);
            switcher.changeTheme(theme: theme);

            final newUser = user.copy(isDarkMode: !isDarkMode);
            UserPreferences.setUser(newUser);
          },
        ),
      ),
    ],
  );
}
Future<void> Logout(BuildContext context) async {
  const CircularProgressIndicator();
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement( context,
    MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ),
  );
}


