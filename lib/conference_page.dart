import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final String userID = Random().nextInt(10000).toString();

class ConferencePage extends StatefulWidget {
  const ConferencePage({super.key, required this.conferenceId});
  final String conferenceId;

  @override
  State<ConferencePage> createState() => _ConferencePageState();
}

class _ConferencePageState extends State<ConferencePage> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID:
            1000330554, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            '01993ba421b5296d36a8b4b9a974bb46df242f4a0d16575652a725a43c35704b', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: userID,
        callID: widget.conferenceId,
        userName: 'user_$userID',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall());
  }
}
