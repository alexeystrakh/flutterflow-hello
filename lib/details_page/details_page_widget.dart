import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPageWidget extends StatefulWidget {
  DetailsPageWidget({Key key}) : super(key: key);

  @override
  _DetailsPageWidgetState createState() => _DetailsPageWidgetState();
}

class _DetailsPageWidgetState extends State<DetailsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Video Details',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: FlutterFlowVideoPlayer(
          path:
              'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
          videoType: VideoType.network,
          autoPlay: false,
          looping: true,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: false,
        ),
      ),
    );
  }
}
