import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:dindari_s_daily_clime/theme/theme_helper.dart';
import 'package:dindari_s_daily_clime/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Daily Clime',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeSunnyTabContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}
