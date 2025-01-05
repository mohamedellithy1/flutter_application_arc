
import 'package:flutter/material.dart';
import 'package:flutter_application_test/controller/song_controller.dart';
import 'package:flutter_application_test/presenter/simple_presenter.dart';
import 'package:flutter_application_test/view/interface_class.dart';

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

class _HomeScreenState extends State<HomeScreen>    implements InterfaceClass{
  double result = 0.0;
  @override
  Widget build(BuildContext context) {
      SimplePresenter presenter  = SimplePresenter(this);

    return  Scaffold(
      appBar: AppBar(
        title: Text("MVC pattern with flutter"),
         
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$result'),
            Text(SongController.loading ? "loading " : SongController.getSongInfo().name),
            ElevatedButton(onPressed: (){
              presenter.add(8.8, 2.8);
              // setState(() {

              //   // SongController.loading = !SongController.loading;
              // });
            }, child: Text('get date'))
          ],
        ),
      ),
    );
  }
  
  @override
  void updateViewResult(double result) {
    setState(() {
      this.result = result;
    });
  }
}