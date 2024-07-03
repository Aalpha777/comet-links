import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future<LaunchPadsRecord?> launchPadTakeOff(
  BuildContext context, {
  required String? launchpadID,
}) async {
  await launchURL('https://apptitan.flutterflow.app/');
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text(
        'Comet is in the Sky!',
        style: TextStyle(),
      ),
      duration: const Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).secondary,
    ),
  );

  return null;
}
