// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      createdAt: json['created_at'] as String?,
      entryId: json['entry_id'] as int?,
      field1: json['field1'] as String?,
      field2: json['field2'] as String?,
      field3: json['field3'] as String?,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'created_at': instance.createdAt,
      'entry_id': instance.entryId,
      'field1': instance.field1,
      'field2': instance.field2,
      'field3': instance.field3,
    };
