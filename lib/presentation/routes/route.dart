import 'package:flutter/material.dart';
import 'package:pokedex_mobile/core/constants/routes.dart';
import 'package:pokedex_mobile/presentation/views/pages/detail/detail.dart';
import 'package:pokedex_mobile/presentation/views/pages/favorites/favorites.dart';
import 'package:pokedex_mobile/presentation/views/pages/home/home.dart';
import 'package:pokedex_mobile/presentation/views/pages/splash/splash.dart';

abstract class AppRoute {
  static String initial = Routes.splash;

  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.splash: (context) => const SplashScreen(),
    Routes.home: (context) => const HomeScreen(),
    Routes.details: (context) => const DetailScreen(),
    Routes.favorites: (context) => const FavoriteScreen(),
  };
}
