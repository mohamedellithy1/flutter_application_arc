import 'package:flutter_application_test/model/post_model.dart';

abstract class PostRepo {
  Future<List<PostModel>> getPosts();
}