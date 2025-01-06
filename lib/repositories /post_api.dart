import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_test/model/post_model.dart';
import 'package:flutter_application_test/repositories%20/post_repo.dart';

class PostApi implements PostRepo {
  @override
  Future<List<PostModel>> getPosts()async {
    List<PostModel> result = [];
    try{
      Dio dio = Dio();
      var response = await dio.get("https://jsonplaceholder.typicode.com/posts");
      var list = response.data as List;
      result = list.map((e ) => PostModel.fromJson(e)).toList();
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
    return result;
  }
}