import 'package:flutter/material.dart';
import 'package:flutter_application_test/model/post_model.dart';
import 'package:flutter_application_test/repositories%20/post_api.dart';
import 'package:flutter_application_test/view_model/fetch_posts.dart';
import 'package:flutter_application_test/view_model/post_view_model.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  FetchPosts fetchPosts = FetchPosts( postRepository: PostApi());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(fetchPosts.title),
      ),
      body: Center(
        child: FutureBuilder<List<PostViewModel>>(
          builder: (context , snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();}
            else{
              var post = snapshot.data;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context , index) => Divider(),
                  itemCount: post!.length,
                  itemBuilder: (context , index){
                    return 
                    Text(post[index].body.toString());
                    // ListTile(
                    //   title: Text(post[index].title.toString()),
                    //   subtitle: Text(post[index].body.toString()),
                    // );
                  },
                ),
              );
            }
          }, 
          future: fetchPosts.fetchData(),)
      ),
    );
  }
}