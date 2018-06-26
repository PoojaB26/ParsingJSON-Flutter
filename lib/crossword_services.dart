import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'crossword_model.dart';

Future<String> _loadCrosswordAsset() async {
  return await rootBundle.loadString('assets/crossword.json');
}

Crossword _parseJsonForCrossword(String jsonString) {
  Map JSON = json.decode(jsonString);

  List<Word> words = new List<Word>();
  for (var word in JSON['across']) {
    words.add(new Word(word['number'], word['word']));
  }

  return new Crossword(JSON['id'], JSON['name'], new Across(words));
}

Future loadCrossword() async {
  String jsonCrossword = await _loadCrosswordAsset();
  Crossword crossword = _parseJsonForCrossword(jsonCrossword);
  print(crossword.across.words[1].word);
}