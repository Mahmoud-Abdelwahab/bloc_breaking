import 'package:bloc_breaking/presentation/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'Constants/strings.dart';
import 'presentation/screens/characters_details_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case chararctersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

      case chararctersDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());

      default:
        return null;
    }
  }
}
