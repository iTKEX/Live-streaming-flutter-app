import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    super.key,
    required this.isHost,
    required this.userName,
    required this.userID,
  });

  final String userName;
  final bool isHost;
  final String userID;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: "", // Replace with your ZEGOCLOUD appID.
        appSign: "", // Replace with your appSign.
        userID: userID,
        userName: userName,
        liveID: 'Wetaan',
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
