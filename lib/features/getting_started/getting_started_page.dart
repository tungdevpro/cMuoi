import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({super.key});

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  late final RtcEngine _engine;
  bool isJoined = false, switchCamera = true, switchRender = true;
  late final RtcEngineEventHandler _rtcEngineEventHandler;
  int? _remoteUid;

  @override
  void initState() {
    super.initState();
    requestPermission();
    _initEngine();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agora Video Call'),
      ),
      body: Stack(
        children: [
          Center(
            child: _remoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 100,
              height: 150,
              child: Center(
                child: AgoraVideoView(
                  controller: VideoViewController(
                    rtcEngine: _engine,
                    canvas: const VideoCanvas(uid: 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: _engine,
          canvas: VideoCanvas(uid: _remoteUid),
          connection: const RtcConnection(channelId: _LiveConfig.channelId),
        ),
      );
    } else {
      return const Text(
        'Please wait for remote user to join',
        textAlign: TextAlign.center,
      );
    }
  }

  void requestPermission() async {
    await [Permission.microphone, Permission.camera].request();
  }

  Future<void> _initEngine() async {
    _engine = createAgoraRtcEngine();
    await _engine.initialize(const RtcEngineContext(
      appId: _LiveConfig.appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));
    _rtcEngineEventHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        debugPrint('[onError] err: $err, msg: $msg');
      },
      onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
        debugPrint(
            '[onJoinChannelSuccess] connection: ${connection.toJson()} elapsed: $elapsed');
        setState(() {
          isJoined = true;
        });
      },
      onUserJoined: (RtcConnection connection, int rUid, int elapsed) {
        debugPrint(
            '[onUserJoined] connection: ${connection.toJson()} remoteUid: $rUid elapsed: $elapsed');
        setState(() {
          _remoteUid = rUid;
        });
      },
      onUserOffline:
          (RtcConnection connection, int rUid, UserOfflineReasonType reason) {
        debugPrint(
            '[onUserOffline] connection: ${connection.toJson()}  rUid: $rUid reason: $reason');
        // setState(() {
        //   remoteUid.removeWhere((element) => element == rUid);
        // });
        setState(() {
          _remoteUid = null;
        });
      },
      onLeaveChannel: (RtcConnection connection, RtcStats stats) {
        debugPrint(
            '[onLeaveChannel] connection: ${connection.toJson()} stats: ${stats.toJson()}');
        setState(() {
          isJoined = false;
          // remoteUid.clear();
        });
      },
    );

    _engine.registerEventHandler(_rtcEngineEventHandler);
    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.joinChannel(
      token: _LiveConfig.token,
      channelId: _LiveConfig.channelId,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  Future<void> _dispose() async {
    await _engine.leaveChannel();
    await _engine.release();
  }

  @override
  void dispose() {
    super.dispose();
    _dispose();
  }
}

abstract class _LiveConfig {
  const _LiveConfig._();

  static const String appId = '50b9f01c0840477dab3b783a94fdb59e';
  static const String token =
      '007eJxTYFjHqvFyrgf3vjcqYQIByjnBOav3HWI8/zX1dsqJ6BjXSRcVGEwNkizTDAyTDSxMDEzMzVMSk4yTzC2MEy1N0lKSTC1TT4lcT20IZGQ4J5LCyMgAgSA+D0NJanFJZl56fE5mWSoDAwAlPCJn';
  static const String channelId = 'testing_live';
}
