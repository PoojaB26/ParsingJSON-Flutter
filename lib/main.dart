import 'package:flutter/material.dart';
import 'package:flutter_json/services/product_services.dart';
import 'package:flutter_json/services/photo_services.dart';
import 'package:flutter_json/services/address_services.dart';
import 'package:flutter_json/services/student_services.dart';
import 'package:flutter_json/services/shape_services.dart';


void main() {
  runApp(new MyApp());
  loadProduct();
  loadPhotos();
  loadAddress();
  loadStudent();
  loadShape();

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
