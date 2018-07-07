import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter_json/model/product_model.dart';

Future<String> _loadProductAsset() async {
  return await rootBundle.loadString('assets/product.json');
}
/*

Product _parseJsonForCrossword(String jsonString) {
  Map JSON = json.decode(jsonString);

  List<Image> words = new List<Image>();
  for (var word in JSON['across']) {
    words.add(new Image(word['number'], word['word']));
  }

  return new Product(JSON['id'], JSON['name'], new Image(words));
}
*/

Future loadProduct() async {
  String jsonProduct = await _loadProductAsset();
  final jsonResponse = json.decode(jsonProduct);
  Product product = new Product.fromJson(jsonResponse);
  print(product.images[0].imageName);
}