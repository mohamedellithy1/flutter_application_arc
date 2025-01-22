import 'package:flutter_application_test/data/models/character.dart';
import 'package:flutter_application_test/data/web_serviecs/character_web_services.dart';

class CharacterRepo {
 final  CharacterWebServices characterWebServices;
  CharacterRepo({required this.characterWebServices});
    Future <List<Character>> fetchCharacters() async {
      final characters = await characterWebServices.fetchCharacters();
      
      return characters.map((character) => Character.fromJson(character)).toList();

    
    }

}