import 'package:json_annotation/json_annotation.dart';

part 'batters_model.g.dart';

@JsonSerializable()
class BatterItem extends Object {
  String id;
  String type;

  BatterItem({this.id, this.type});

  factory BatterItem.fromJson(Map<String, dynamic> json) => _$BatterItemFromJson(json);
  Map<String, dynamic> toJson() => _$BatterItemToJson(this);
}