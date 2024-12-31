import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/logoheader/logoheader_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logoheader component.
  late LogoheaderModel logoheaderModel;

  @override
  void initState(BuildContext context) {
    logoheaderModel = createModel(context, () => LogoheaderModel());
  }

  @override
  void dispose() {
    logoheaderModel.dispose();
  }
}
