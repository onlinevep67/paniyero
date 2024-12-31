import '/components/logoheader/logoheader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

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
