import 'package:flutter/material.dart';
import 'package:shoes_app/pages/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        appBarTheme:AppBarTheme(
          color: Colors.white,
          elevation: 0.0
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
