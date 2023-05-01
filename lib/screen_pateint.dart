import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:patientsapp/pateint_data/feed.dart';
import 'package:patientsapp/pateint_data/pateint_data.dart';

class ScreenPatient extends StatefulWidget {
  final PateintData pdata;
  const ScreenPatient({super.key, required this.pdata});

  @override
  State<ScreenPatient> createState() => _ScreenPatientState();
}

class _ScreenPatientState extends State<ScreenPatient> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${widget.pdata.channel!.name}"),
        ),
        body: Column(
          children: [
            //pulse
            ListTile(
              leading: Text(widget.pdata.channel!.field1!),
              title: Text(widget.pdata.feeds!.first.field1!),
            ),
             ListTile(
              leading: Text(widget.pdata.channel!.field2!),
              title: Text(widget.pdata.feeds!.first.field2!),
            ),
             ListTile(
              leading: Text(widget.pdata.channel!.field3!),
              title: Text(widget.pdata.feeds!.first.field3!),
            ),
          ],
        ),
      ),
    );
  }
}
