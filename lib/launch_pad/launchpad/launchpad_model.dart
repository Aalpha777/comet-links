import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'launchpad_widget.dart' show LaunchpadWidget;
import 'package:flutter/material.dart';

class LaunchpadModel extends FlutterFlowModel<LaunchpadWidget> {
  ///  Local state fields for this page.

  LaunchPadsRecord? launchPadDoc;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Action Block - LaunchPadTakeOff] action in Launchpad widget.
  LaunchPadsRecord? document;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
