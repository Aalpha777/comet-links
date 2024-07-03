import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/user_views/pages/tabs/billing/billing_widget.dart';
import '/user_views/pages/tabs/main_dashboard/main_dashboard_widget.dart';
import '/user_views/pages/tabs/shop/shop_widget.dart';
import '/user_views/pages/tabs/side_nav/side_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_dashboard_model.dart';
export 'user_dashboard_model.dart';

class UserDashboardWidget extends StatefulWidget {
  const UserDashboardWidget({super.key});

  @override
  State<UserDashboardWidget> createState() => _UserDashboardWidgetState();
}

class _UserDashboardWidgetState extends State<UserDashboardWidget> {
  late UserDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.sideNavModel,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: SideNavWidget(
                  selectedNav: 1,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (FFAppState().UserNavBar1Controller == 1)
                      wrapWithModel(
                        model: _model.mainDashboardModel,
                        updateCallback: () => setState(() {}),
                        child: MainDashboardWidget(),
                      ),
                    if (FFAppState().UserNavBar1Controller == 2)
                      wrapWithModel(
                        model: _model.billingModel,
                        updateCallback: () => setState(() {}),
                        child: BillingWidget(),
                      ),
                    if (FFAppState().UserNavBar1Controller == 3)
                      wrapWithModel(
                        model: _model.shopModel,
                        updateCallback: () => setState(() {}),
                        child: ShopWidget(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
