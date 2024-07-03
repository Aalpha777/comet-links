import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/e_commerce/cart_summary/cart_summary_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_details_model.dart';
export 'cart_details_model.dart';

class CartDetailsWidget extends StatefulWidget {
  const CartDetailsWidget({super.key});

  @override
  State<CartDetailsWidget> createState() => _CartDetailsWidgetState();
}

class _CartDetailsWidgetState extends State<CartDetailsWidget> {
  late CartDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartDetailsModel());

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Align(
        alignment: const AlignmentDirectional(0.0, -1.0),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 1230.0,
          ),
          decoration: const BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 12.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 2.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.home_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.chevron_right_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              height: 32.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                child: Text(
                                  'My Cart',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
                  child: Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.cartSummaryModel,
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: const CartSummaryWidget(
                          showTotal: false,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        constraints: const BoxConstraints(
                          maxWidth: 430.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order Summary',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Sora',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 12.0),
                                child: Text(
                                  'Below is a list of your items.',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Divider(
                                height: 32.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 12.0),
                                      child: Text(
                                        'Price Breakdown',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Base Price',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                functions.priceSummary(
                                                    FFAppState()
                                                        .myCartSummary
                                                        .toList()),
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                                currency: '\$',
                                              ),
                                              '0',
                                            ),
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Taxes',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            formatNumber(
                                              (valueOrDefault<double>(
                                                    functions.priceSummary(
                                                        FFAppState()
                                                            .myCartSummary
                                                            .toList()),
                                                    0.0,
                                                  ) *
                                                  0.0825),
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.automatic,
                                              currency: '\$',
                                            ),
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Total',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 36.0,
                                                icon: Icon(
                                                  Icons.info_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 18.0,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Text(
                                              FFAppState().myCart.isNotEmpty
                                                  ? formatNumber(
                                                      (valueOrDefault<double>(
                                                                functions.priceSummary(
                                                                    FFAppState()
                                                                        .myCartSummary
                                                                        .toList()),
                                                                0.0,
                                                              ) +
                                                              (valueOrDefault<
                                                                      double>(
                                                                    functions.priceSummary(FFAppState()
                                                                        .myCartSummary
                                                                        .toList()),
                                                                    0.0,
                                                                  ) *
                                                                  0.0825)) +
                                                          4.00,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType:
                                                          DecimalType.automatic,
                                                      currency: '\$',
                                                    )
                                                  : '\$0.00',
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Sora',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                              if (FFAppState().myCart.isNotEmpty)
                                FFButtonWidget(
                                  onPressed: () async {
                                    final paymentResponse =
                                        await processStripePayment(
                                      context,
                                      amount: valueOrDefault<int>(
                                        (valueOrDefault<double>(
                                                  functions.priceSummary(
                                                      FFAppState()
                                                          .myCartSummary
                                                          .toList()),
                                                  0.0,
                                                ) *
                                                100)
                                            .round(),
                                        0,
                                      ),
                                      currency: 'USD',
                                      customerEmail: currentUserEmail,
                                      customerName: currentUserDisplayName,
                                      allowGooglePay: false,
                                      allowApplePay: false,
                                    );
                                    if (paymentResponse.paymentId == null &&
                                        paymentResponse.errorMessage != null) {
                                      showSnackbar(
                                        context,
                                        'Error: ${paymentResponse.errorMessage}',
                                      );
                                    }
                                    _model.paymentId =
                                        paymentResponse.paymentId ?? '';

                                    // orderCreation

                                    var ordersRecordReference =
                                        OrdersRecord.collection.doc();
                                    await ordersRecordReference.set({
                                      ...createOrdersRecordData(
                                        totalPrice: valueOrDefault<double>(
                                          functions.priceSummary(FFAppState()
                                              .myCartSummary
                                              .toList()),
                                          0.0,
                                        ),
                                        tax: 0.0,
                                        timeCreated: getCurrentTimestamp,
                                        status: 'Completed',
                                        owner: currentUserReference,
                                        assignedEmailOwner: currentUserEmail,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'products': FFAppState().myCart,
                                          'users': [currentUserReference],
                                        },
                                      ),
                                    });
                                    _model.createdOrderDoc =
                                        OrdersRecord.getDocumentFromData({
                                      ...createOrdersRecordData(
                                        totalPrice: valueOrDefault<double>(
                                          functions.priceSummary(FFAppState()
                                              .myCartSummary
                                              .toList()),
                                          0.0,
                                        ),
                                        tax: 0.0,
                                        timeCreated: getCurrentTimestamp,
                                        status: 'Completed',
                                        owner: currentUserReference,
                                        assignedEmailOwner: currentUserEmail,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'products': FFAppState().myCart,
                                          'users': [currentUserReference],
                                        },
                                      ),
                                    }, ordersRecordReference);
                                    // initialize loop
                                    _model.tempLoopVar = 0;
                                    while (_model.tempLoopVar! <
                                        FFAppState().myCart.length) {
                                      var launchPadsRecordReference =
                                          LaunchPadsRecord.collection.doc();
                                      await launchPadsRecordReference
                                          .set(createLaunchPadsRecordData(
                                        userOwner: currentUserReference,
                                      ));
                                      _model.creaedDoc =
                                          LaunchPadsRecord.getDocumentFromData(
                                              createLaunchPadsRecordData(
                                                userOwner: currentUserReference,
                                              ),
                                              launchPadsRecordReference);
                                      _model.addToTemplaunchpadHolder(
                                          _model.creaedDoc!.reference);
                                      _model.tempLoopVar =
                                          _model.tempLoopVar! + 1;
                                    }
                                    // update user launchpads and orderList
                                    //

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'launchpads':
                                              functions.addToListoOfLaunchpads(
                                                  (currentUserDocument
                                                              ?.launchpads
                                                              .toList() ??
                                                          [])
                                                      .toList(),
                                                  _model.templaunchpadHolder
                                                      .toList()),
                                          'orders': FieldValue.arrayUnion([
                                            _model.createdOrderDoc?.reference
                                          ]),
                                        },
                                      ),
                                    });
                                    // clear values for cart
                                    FFAppState().myCart = [];
                                    FFAppState().myCartSummary = [];
                                    setState(() {});

                                    context.pushNamed('UserDashboard');

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'OrderCompleted',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );

                                    setState(() {});
                                  },
                                  text: 'Continue to Checkout',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
                                    padding: const EdgeInsets.all(0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 2.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    hoverBorderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    hoverTextColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
