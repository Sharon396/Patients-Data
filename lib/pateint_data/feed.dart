import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'entry_id')
  int? entryId;
  int? field1;
  int? field2;
  int? field3;

  Feed({
    this.createdAt,
    this.entryId,
    this.field1,
    this.field2,
    this.field3,
  });

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
