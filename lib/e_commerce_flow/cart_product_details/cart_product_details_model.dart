import '/e_commerce/cart_badge/cart_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_product_details_widget.dart' show CartProductDetailsWidget;
import 'package:flutter/material.dart';

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
