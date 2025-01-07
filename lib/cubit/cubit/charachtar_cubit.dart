import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_test/data/model/Ability_model.dart';
import 'package:flutter_application_test/data/model/charachter_model.dart';
import 'package:flutter_application_test/data/model/role_model.dart';
import 'package:flutter_application_test/data/model/voice_line.dart';
import 'package:flutter_application_test/data/repo/repo_layer.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../../data/model/charachter_model.dart';

part 'charachtar_state.dart';

class CharachtarCubit extends Cubit<CharachtarState> {
  CharachtarCubit(this.repoLayer) : super(CharachtarInitial());
  final RepoLayer repoLayer;

  Future<List<CharachterModel>> requestCharachter()async{
    try{
    final response = await repoLayer.getAgent();
    if (response == null ){
      return [];
    } 
    final responseDecode = json.decode(response.body);
    final data = responseDecode['data'] as List<dynamic>;
    final lsit = data.map((dynamic e){
      //role
      final role = e['role'] ?? {};
      final roleInfo = RoleModel(
        uuid: e['uuid'] ?? '',
         displayName: e['displayName'] ?? '',
          description: e['description'] ?? '',
          displayIconp: e['displayIcon'] ?? '',);
    // ability
    final ability = e['abilities'] as List<dynamic>;
    final abilityInfo = ability.map((dynamic a){
      return AbilityModel(
        slot: a['slot'] ?? '',
         displayName:   a['displayName'] ?? '',
          description: a['description'] ?? '',
           displayIcon: a['displayIcon'] ?? '');
    }).toList();
    abilityInfo.retainWhere((element) => element.displayName.isNotEmpty);

    // voice line
    final voiceLine = e['voiceLines']  ?? '';
    final voiceLineInfo = voiceLine['mediaList'] as List ; 
    final voiceMedia =  VoiceLine( 
      voiceLine: voiceLineInfo[0]['wave']
    );
    return CharachterModel(
      displayName: e['displayName'] ?? '',
       description: e['description'] ?? '',
        fullPortrait: e['fullPortrait'] ?? '',
        displayIcon: e['displayIcon'] ?? '',
            Ability: abilityInfo,
        voice_line: [voiceMedia],
        roleModel: roleInfo);
     } ).toSet().toList();
      lsit.retainWhere((x) => x.displayName.isNotEmpty);
      return lsit;
   
    
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
      throw Exception(e);
    }
  }
}
