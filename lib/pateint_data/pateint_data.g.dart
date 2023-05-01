// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pateint_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PateintData _$PateintDataFromJson(Map<String, dynamic> json) => PateintData(
      channel: json['channel'] == null
          ? null
          : Channel.fromJson(json['channel'] as Map<String, dynamic>),
      feeds: (json['feeds'] as List<dynamic>?)
          ?.map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PateintDataToJson(PateintData instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'feeds': instance.feeds,
    };
