import 'package:gerald_app/pages/auth/login_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/explore_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/lapor_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/notifikasi_screen.dart';
import 'package:gerald_app/pages/main/bottom_nav_menu/profile_screen.dart';
import 'package:gerald_app/pages/main/main_menu_screen.dart';
import 'package:gerald_app/pages/main/onboarding_screen.dart';
import 'package:gerald_app/pages/main/splash_screen.dart';
import 'package:get/get.dart';

class NavigationRoute {
  static String initial = '/';
  static String explore = '/explore';
  static String lapor= '/lapor';
  static String notifikasi = '/notifikasi';
  static String profile = '/profile';
  static String mainMenu= '/mainmenu';
  static String login = '/login';
  static String onboarding = '/onboarding';



  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: explore, page: () => const ExploreScreen()),
    GetPage(name: lapor, page: () => const LaporScreen()),
    GetPage(name: notifikasi, page: () => const NotifiesScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: mainMenu, page: () => const MainMenuScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: onboarding, page: () => const OnboardingScreen()),
  ];
}