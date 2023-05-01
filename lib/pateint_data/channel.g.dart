// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      field1: json['field1'] as String?,
      field2: json['field2'] as String?,
      field3: json['field3'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      lastEntryId: json['last_entry_id'] as int?,
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'field1': instance.field1,
      'field2': instance.field2,
      'field3': instance.field3,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'last_entry_id': instance.lastEntryId,
    };
