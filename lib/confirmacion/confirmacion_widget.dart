import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'confirmacion_model.dart';
export 'confirmacion_model.dart';

class ConfirmacionWidget extends StatefulWidget {
  const ConfirmacionWidget({super.key});

  @override
  State<ConfirmacionWidget> createState() => _ConfirmacionWidgetState();
}

class _ConfirmacionWidgetState extends State<ConfirmacionWidget> {
  late ConfirmacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmacionModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 35.0, 15.0, 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/395353334_725283439621337_2405233248517246770_n.jpg',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: Text(
                    'Gracias por registrarte en nuestro torneo',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF12151C),
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('RegistroTorneo');
                    },
                    text: 'Volver',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 55.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF7B4CC2),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 2.0,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
