import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<LaunchPadsRecord?> launchPadTakeOff(
  BuildContext context, {
  required String? launchpadID,
}) async {
  await launchURL('https://apptitan.flutterflow.app/');
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Comet is in the Sky!',
        style: TextStyle(),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).secondary,
    ),
  );

  return null;
}
