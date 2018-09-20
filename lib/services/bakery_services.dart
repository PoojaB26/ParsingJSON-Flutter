import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_json/model/bakery_model.dart';



Future<String> _loadBakeryAsset() async {
  return await rootBundle.loadString('assets/bakery.json');
}

Future loadBakery() async {
  String jsonBakery = await _loadBakeryAsset();
  final bakery = Bakery.fromJson(json.decode(jsonBakery));
  print(bakery.batter.type);

}