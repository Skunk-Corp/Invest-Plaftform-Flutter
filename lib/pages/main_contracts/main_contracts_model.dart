import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_contracts_widget.dart' show MainContractsWidget;
import 'package:flutter/material.dart';

class MainContractsModel extends FlutterFlowModel<MainContractsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webNav component.
  late WebNavModel webNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
