
import 'package:flutter/material.dart';
import 'package:flutter_application_test/controller/song_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("MVC pattern with flutter"),
         
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SongController.loading ? "loading " : SongController.getSongInfo().name),
            ElevatedButton(onPressed: (){
              setState(() {
                SongController.loading = !SongController.loading;
              });
            }, child: Text('get date'))
          ],
        ),
      ),
    );
  }
}