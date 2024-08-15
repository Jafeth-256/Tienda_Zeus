import '/flutter_flow/flutter_flow_util.dart';
import 'chat_ejemplo_widget.dart' show ChatEjemploWidget;
import 'package:flutter/material.dart';

class ChatEjemploModel extends FlutterFlowModel<ChatEjemploWidget> {
  ///  State fields for stateful widgets in this page.

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
