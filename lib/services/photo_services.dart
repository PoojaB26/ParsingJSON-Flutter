import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter_json/model/photo_model.dart';

Future<String> _loadPhotoAsset() async {
  return await rootBundle.loadString('assets/photo.json');
}

Future loadPhotos() async {
  String jsonPhotos = await _loadPhotoAsset();
  final jsonResponse = json.decode(jsonPhotos);
  PhotosList photosList = PhotosList.fromJson(jsonResponse);
  print("photos " + photosList.photos[0].title);
}