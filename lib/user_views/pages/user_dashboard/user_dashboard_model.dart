import '/flutter_flow/flutter_flow_util.dart';
import '/user_views/pages/tabs/billing/billing_widget.dart';
import '/user_views/pages/tabs/main_dashboard/main_dashboard_widget.dart';
import '/user_views/pages/tabs/shop/shop_widget.dart';
import '/user_views/pages/tabs/side_nav/side_nav_widget.dart';
import 'user_dashboard_widget.dart' show UserDashboardWidget;
import 'package:flutter/material.dart';

class UserDashboardModel extends FlutterFlowModel<UserDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for MainDashboard component.
  late MainDashboardModel mainDashboardModel;
  // Model for Billing component.
  late BillingModel billingModel;
  // Model for Shop component.
  late ShopModel shopModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    mainDashboardModel = createModel(context, () => MainDashboardModel());
    billingModel = createModel(context, () => BillingModel());
    shopModel = createModel(context, () => ShopModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    mainDashboardModel.dispose();
    billingModel.dispose();
    shopModel.dispose();
  }
}
