import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:patientsapp/pateint_data/feed.dart';
import 'package:patientsapp/pateint_data/pateint_data.dart';


Future<PateintData> getPaitentDetails({required String channelid}) async {
  final response = await http.get(
      Uri.parse("https://api.thingspeak.com/channels/$channelid/fields/1,2,3.json?results=1"));
  final bodyasjson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = PateintData.fromJson(bodyasjson);
 // final datafeeds=Feed.fromJson(data.feeds as Map<String, dynamic>);

 final List<Feed> feedData= data.feeds!;
 return data;
  //print(data.channel!.field1);
  //print(data.channel!.field2);
  //print(data.channel!.field3);
}
