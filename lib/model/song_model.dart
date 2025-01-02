class SongModel{
  String name, des , artist;
  SongModel(
    {
      required this.artist, 
      required this.name, 
      required this.des
    }
  );
  factory SongModel.fromJson(Map<String , dynamic> json){
    return SongModel(artist: json["artist"], name: json["name"], des:json["des"]);
  }
  Map<String, dynamic> toJson(){
    return {
      "name" : this.name,
      "des" : this.des,
      "artist" : this.artist
    };
  }
}
