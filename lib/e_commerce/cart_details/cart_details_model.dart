import '/backend/backend.dart';
import '/e_commerce/cart_summary/cart_summary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_details_widget.dart' show CartDetailsWidget;
import 'package:flutter/material.dart';

class CartDetailsModel extends FlutterFlowModel<CartDetailsWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  double taxes = 0.0;

  int? tempLoopVar;

  List<DocumentReference> templaunchpadHolder = [];
  void addToTemplaunchpadHolder(DocumentReference item) =>
      templaunchpadHolder.add(item);
  void removeFromTemplaunchpadHolder(DocumentReference item) =>
      templaunchpadHolder.remove(item);
  void removeAtIndexFromTemplaunchpadHolder(int index) =>
      templaunchpadHolder.removeAt(index);
  void insertAtIndexInTemplaunchpadHolder(int index, DocumentReference item) =>
      templaunchpadHolder.insert(index, item);
  void updateTemplaunchpadHolderAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      templaunchpadHolder[index] = updateFn(templaunchpadHolder[index]);

  ///  State fields for stateful widgets in this page.

  // Model for cartSummary component.
  late CartSummaryModel cartSummaryModel;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? createdOrderDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LaunchPadsRecord? creaedDoc;

  @override
  void initState(BuildContext context) {
    cartSummaryModel = createModel(context, () => CartSummaryModel());
  }

  @override
  void dispose() {
    cartSummaryModel.dispose();
  }
}
