import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'scan_widget.dart' show ScanWidget;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScanModel extends FlutterFlowModel<ScanWidget> {
  ///  State fields for stateful widgets in this page.

  var accountNumber = '';
  // State field(s) for useraccount widget.
  FocusNode? useraccountFocusNode;
  TextEditingController? useraccountTextController;
  String? Function(BuildContext, String?)? useraccountTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TransactionsRecord? send;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    useraccountFocusNode?.dispose();
    useraccountTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }

  /// Action blocks.
  Future<String?> qrScan(BuildContext context) async {
    return null;
  }
}
