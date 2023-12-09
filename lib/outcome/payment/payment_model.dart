import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'payment_widget.dart' show PaymentWidget;
import 'package:flutter/material.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for paymen widget.
  FormFieldController<String>? paymenValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get paymenValue => paymenValueController?.value;
}
