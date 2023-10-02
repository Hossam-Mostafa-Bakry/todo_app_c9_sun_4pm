import 'package:flutter/material.dart';
import 'package:todo_app_c9_sun_4pm/core/theme/application_theme.dart';
import 'package:todo_app_c9_sun_4pm/layout/home_layout.dart';
import 'package:todo_app_c9_sun_4pm/pages/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
