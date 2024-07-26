import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comprar_cartas_widget.dart' show ComprarCartasWidget;
import 'package:flutter/material.dart';

class ComprarCartasModel extends FlutterFlowModel<ComprarCartasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
