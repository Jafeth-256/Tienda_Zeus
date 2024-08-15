import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'registro_torneo_model.dart';
export 'registro_torneo_model.dart';

class RegistroTorneoWidget extends StatefulWidget {
  const RegistroTorneoWidget({super.key});

  @override
  State<RegistroTorneoWidget> createState() => _RegistroTorneoWidgetState();
}

class _RegistroTorneoWidgetState extends State<RegistroTorneoWidget> {
  late RegistroTorneoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistroTorneoModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
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
        backgroundColor: const Color(0xFFF6F6F6),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Registro Torneo',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 36.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'ID',
                      hintText: 'Ingrese su ID',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFF12151C),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF7B4CC2),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF12151C),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nombre',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      hintText: 'Ingrese su nombre',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFF12151C),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF7B4CC2),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF12151C),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _model.textController3,
                    focusNode: _model.textFieldFocusNode3,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Numero de teléfono ',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      hintText: 'Ingrese su número',
                      hintStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Inter',
                                color: const Color(0xFF12151C),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF7B4CC2),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF12151C),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    validator:
                        _model.textController3Validator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'Confirmacion',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'Registrar',
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Busqueda');
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
