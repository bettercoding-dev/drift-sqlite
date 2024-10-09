// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cake.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CakeImpl _$$CakeImplFromJson(Map<String, dynamic> json) => _$CakeImpl(
      id: (json['id'] as num?)?.toInt() ?? -1,
      name: json['name'] as String,
      yummyness: (json['yummyness'] as num).toInt(),
    );

Map<String, dynamic> _$$CakeImplToJson(_$CakeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'yummyness': instance.yummyness,
    };
