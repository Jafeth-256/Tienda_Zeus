import '/flutter_flow/flutter_flow_util.dart';
import 'pagina_inicio_widget.dart' show PaginaInicioWidget;
import 'package:flutter/material.dart';

class PaginaInicioModel extends FlutterFlowModel<PaginaInicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
