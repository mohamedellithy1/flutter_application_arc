import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/data/models/character.dart';
import 'package:flutter_application_test/data/repository/character_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharacterRepo characterRepo;
  late List<Character> characters;
  CharactersCubit(this.characterRepo) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    characterRepo.fetchCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    }).catchError((e) {
      emit(CharactersError(e.toString()));
    });
  }
}
