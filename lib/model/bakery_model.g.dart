// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bakery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bakery _$BakeryFromJson(Map<String, dynamic> json) {
  return Bakery(
      id: json['id'] as String,
      type: (json['type'] as List)?.map((e) => e as String)?.toList(),
      name: json['name'] as String,
      ppu: (json['ppu'] as num)?.toDouble(),
      batter: json['batters'] == null
          ? null
          : BatterItem.fromJson(json['batters'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BakeryToJson(Bakery instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'ppu': instance.ppu,
      'batters': instance.batter
    };
