import '/flutter_flow/flutter_flow_util.dart';
import 'header_page_widget.dart' show HeaderPageWidget;
import 'package:flutter/material.dart';

class HeaderPageModel extends FlutterFlowModel<HeaderPageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
