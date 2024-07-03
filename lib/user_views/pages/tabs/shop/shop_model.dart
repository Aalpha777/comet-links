import '/e_commerce/cart_badge/cart_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shop_widget.dart' show ShopWidget;
import 'package:flutter/material.dart';

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
