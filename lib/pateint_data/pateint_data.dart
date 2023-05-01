import 'package:json_annotation/json_annotation.dart';

import 'channel.dart';
import 'feed.dart';

part 'pateint_data.g.dart';

@JsonSerializable()
class PateintData {
  Channel? channel;
  List<Feed>? feeds;

  PateintData({this.channel, this.feeds});

  factory PateintData.fromJson(Map<String, dynamic> json) {
    return _$PateintDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PateintDataToJson(this);
}
