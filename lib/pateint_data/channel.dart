import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  int? id;
  String? name;
  String? latitude;
  String? longitude;
  String? field1;
  String? field2;
  String? field3;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'last_entry_id')
  int? lastEntryId;

  Channel({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.field1,
    this.field2,
    this.field3,
    this.createdAt,
    this.updatedAt,
    this.lastEntryId,
  });

  factory Channel.fromJson(Map<String, dynamic> json) {
    return _$ChannelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}
