import 'package:flutter/material.dart';
import 'package:dindari_s_daily_clime/presentation/beranda_screen/beranda_screen.dart';
import 'package:dindari_s_daily_clime/presentation/home_sunny_tab_container_screen/home_sunny_tab_container_screen.dart';
import 'package:dindari_s_daily_clime/presentation/pemilihan_label_aktivitas_screen/pemilihan_label_aktivitas_screen.dart';
import 'package:dindari_s_daily_clime/presentation/pemilihan_label_aktivitas_one_screen/pemilihan_label_aktivitas_one_screen.dart';
import 'package:dindari_s_daily_clime/presentation/input_cuaca_screen/input_cuaca_screen.dart';
import 'package:dindari_s_daily_clime/presentation/output_cuaca_screen/output_cuaca_screen.dart';
import 'package:dindari_s_daily_clime/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:dindari_s_daily_clime/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String berandaScreen = '/beranda_screen';

  static const String homePopularPage = '/home_popular_page';

  static const String homeRainPage = '/home_rain_page';

  static const String homeSunnyPage = '/home_sunny_page';

  static const String homeSunnyTabContainerScreen =
      '/home_sunny_tab_container_screen';

  static const String homeCloudyPage = '/home_cloudy_page';

  static const String homeHazePage = '/home_haze_page';

  static const String pemilihanLabelAktivitasScreen =
      '/pemilihan_label_aktivitas_screen';

  static const String pemilihanLabelAktivitasOneScreen =
      '/pemilihan_label_aktivitas_one_screen';

  static const String inputCuacaScreen = '/input_cuaca_screen';

  static const String outputCuacaScreen = '/output_cuaca_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    berandaScreen: (context) => BerandaScreen(),
    homeSunnyTabContainerScreen: (context) => HomeSunnyTabContainerScreen(),
    pemilihanLabelAktivitasScreen: (context) => PemilihanLabelAktivitasScreen(),
    pemilihanLabelAktivitasOneScreen: (context) =>
        PemilihanLabelAktivitasOneScreen(),
    inputCuacaScreen: (context) => InputCuacaScreen(),
    outputCuacaScreen: (context) => OutputCuacaScreen(),
    chatbotScreen: (context) => ChatbotScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
