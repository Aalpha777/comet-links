import '/backend/backend.dart';
import '/e_commerce/cart_badge/cart_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_views/product_card/product_card_widget.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopModel extends FlutterFlowModel<ShopWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cartBadge component.
  late CartBadgeModel cartBadgeModel;

  @override
  void initState(BuildContext context) {
    cartBadgeModel = createModel(context, () => CartBadgeModel());
  }

  @override
  void dispose() {
    cartBadgeModel.dispose();
  }
}
