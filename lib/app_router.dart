import 'package:flutter/material.dart';
import 'package:flutter_application_test/constants/strings.dart';
import 'package:flutter_application_test/presentation/screen/CharacterDetailScreen.dart';
import 'package:flutter_application_test/presentation/screen/character_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(
          builder: (_) => const CharacterScreen(
          ),
        );
        
      
    case  characterDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailScreen(
          ),
        );
        
      
    }
    return null;
   
  }
}