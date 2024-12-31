import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scan_widget.dart' show ScanWidget;
import 'package:flutter/material.dart';

class ScanModel extends FlutterFlowModel<ScanWidget> {
  ///  State fields for stateful widgets in this page.

  var accountNumber = '';
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? send;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks.
  Future<String?> qrScan(BuildContext context) async {
    return null;
  }
}
