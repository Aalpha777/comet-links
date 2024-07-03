import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/e_commerce/cart_product/cart_product_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cart_order_details_widget.dart' show CartOrderDetailsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartOrderDetailsModel extends FlutterFlowModel<CartOrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for cartProduct dynamic component.
  late FlutterFlowDynamicModels<CartProductModel> cartProductModels;

  @override
  void initState(BuildContext context) {
    cartProductModels = FlutterFlowDynamicModels(() => CartProductModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartProductModels.dispose();
  }
}
