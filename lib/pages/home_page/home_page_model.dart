import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String serverStatus = 'Loading...';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (get_minecraft_server_deployment_status_minecraft_server_status_get)] action in HomePage widget.
  ApiCallResponse? apiResultkk6;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDownServerUptimeMinutes widget.
  int? dropDownServerUptimeMinutesValue;
  FormFieldController<int>? dropDownServerUptimeMinutesValueController;
  // State field(s) for DropDownServerSize widget.
  String? dropDownServerSizeValue;
  FormFieldController<String>? dropDownServerSizeValueController;
  // State field(s) for DropDownSpotInstanceBoolean widget.
  bool? dropDownSpotInstanceBooleanValue;
  FormFieldController<bool>? dropDownSpotInstanceBooleanValueController;
  // Stores action output result for [Backend Call - API (start_minecraft_server_minecraft_server_post)] action in ButtonLaunchServer widget.
  ApiCallResponse? apiResult9pg;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
