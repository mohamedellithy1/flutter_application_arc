import 'package:flutter/material.dart';
import 'package:flutter_application_test/view/home_screen.dart';


/// model
// song controller 

// view 
main() {
runApp( MyApp());  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}