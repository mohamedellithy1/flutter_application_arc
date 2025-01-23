import 'package:flutter/material.dart';

main() {
runApp(  const NewsApp());  
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'News App',
      theme: li,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(), 
    );
  }
}