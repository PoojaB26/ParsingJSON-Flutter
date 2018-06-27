import 'package:flutter/material.dart';
import 'package:flutter_json/crossword_services.dart';
import 'package:flutter_json/photo_services.dart';
import 'package:flutter_json/address_services.dart';


void main() {
  runApp(new MyApp());
  loadCrossword();
  loadPhotos();
  loadAddress();

}




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return new MaterialApp(
        home: new Scaffold(
          body: new Text("")
        )
      );
  }
}
