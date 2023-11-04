import '/flutter_flow/flutter_flow_util.dart';
import 'modal_create_project_widget.dart' show ModalCreateProjectWidget;
import 'package:flutter/material.dart';

class ModalCreateProjectModel
    extends FlutterFlowModel<ModalCreateProjectWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameController;
  String? Function(BuildContext, String?)? projectNameControllerValidator;
  String? _projectNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4spmowtt' /* Please enter a project name... */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  String? _descriptionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wfu6up0n' /* Please enter a short descripti... */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    projectNameControllerValidator = _projectNameControllerValidator;
    descriptionControllerValidator = _descriptionControllerValidator;
  }

  @override
  void dispose() {
    projectNameFocusNode?.dispose();
    projectNameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
