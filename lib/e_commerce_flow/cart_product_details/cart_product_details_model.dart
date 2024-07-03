import '/backend/backend.dart';
import '/e_commerce/cart_badge/cart_badge_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'cart_product_details_widget.dart' show CartProductDetailsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartProductDetailsModel
    extends FlutterFlowModel<CartProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel;

  @override
  void initState(BuildContext context) {
    cartBadgeModel = createModel(context, () => CartBadgeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cartBadgeModel.dispose();
  }
}
