import 'package:flutter_application_test/model/post_model.dart';
import 'package:flutter_application_test/repositories%20/post_repo.dart';
import 'package:flutter_application_test/view_model/post_view_model.dart';

class FetchPosts {
    String title = "All Posts";
    PostRepo? postRepository;
    FetchPosts({this.postRepository});
    Future<List<PostViewModel>> fetchData() async {
      List<PostModel> list= await postRepository!.getPosts();
      return list.map((e) => PostViewModel(postModel: e)).toList();
    }
  }