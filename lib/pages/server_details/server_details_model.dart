import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'server_details_widget.dart' show ServerDetailsWidget;
import 'package:flutter/material.dart';

class ServerDetailsModel extends FlutterFlowModel<ServerDetailsWidget> {
  ///  Local state fields for this page.

  String ipAddress = 'xxx.xxx.xxx.xxx';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (get_minecraft_server_deployment_status_minecraft_server_status_get)] action in ServerDetails widget.
  ApiCallResponse? serverStatus01;
  // Stores action output result for [Backend Call - API (get_minecraft_server_ip_address_minecraft_server_ip_address_get)] action in ServerDetails widget.
  ApiCallResponse? iPAddressSucceeded;
  // Stores action output result for [Backend Call - API (stop_minecraft_server_minecraft_server_delete)] action in IconButton widget.
  ApiCallResponse? apiResultq7t;
  // State field(s) for Timer widget.
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(30000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
