import 'package:flutter_application_test/model/song_model.dart';

class SongController{
  static bool loading = true;
  static SongModel getSongInfo(){
    // return SongModel(artist: "marwan " , name: "mohamed", des: "ahmed");
    return SongModel.fromJson({
      "name":"ahmed",
      "des": "mohamed",
      "artist": "marwan"
    });
  }
}