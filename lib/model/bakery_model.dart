import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_json/model/batters_model.dart';

part 'bakery_model.g.dart';

@JsonSerializable()
class Bakery extends Object{
  String id;
  List<String> type;
  String name;
  double ppu;

  @JsonKey(name: 'batters')
  BatterItem batter;

  Bakery({
  this.id, this.type, this.name, this.ppu, this.batter
});

  factory Bakery.fromJson(Map<String, dynamic> json) => _$BakeryFromJson(json);
  Map<String, dynamic> toJson() => _$BakeryToJson(this);

}

