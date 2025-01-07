import 'package:flutter_application_test/data/model/Ability_model.dart';
import 'package:flutter_application_test/data/model/role_model.dart';
import 'package:flutter_application_test/data/model/voice_line.dart';

class CharachterModel {
  String displayName, description, fullPortrait, displayIcon; 
  List<AbilityModel> Ability ;
  List<VoiceLine> voice_line ;
  RoleModel roleModel;
  CharachterModel({
    required this.displayName,
    required this.description,
    required this.fullPortrait,
    required this.displayIcon,
    required this.Ability,
    required this.voice_line,
    required this.roleModel,
  });
}