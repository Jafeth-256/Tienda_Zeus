import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFF212123),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Tienda Zeus',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 5.0),
                child: Text(
                  'Bienvenidos a la Tienda Zeus!\n\nVisita los torneos disponibles para este fin de semana y participa para ganar premios!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 358.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF212123),
                        borderRadius: BorderRadius.circular(15.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(0.0),
                            ),
                            child: Image.asset(
                              'assets/images/pexels-introspectivedsgn-9661252.jpg',
                              width: 212.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 45.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('btnTorneos pressed ...');
                              },
                              text: 'Ver Torneos',
                              options: FFButtonOptions(
                                width: 120.0,
                                height: 30.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF7B4CC2),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  shadows: [
                                    const Shadow(
                                      color: Color(0xFF2D3133),
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                    )
                                  ],
                                ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 165.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF212123),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 20.0),
                                child: Text(
                                  'Las mejores tacticas y \nguias para tus juegos \nfavoritos',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('btnTutoriales pressed ...');
                                },
                                text: 'Tutoriales..',
                                options: FFButtonOptions(
                                  width: 110.0,
                                  height: 30.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF7B4CC2),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 165.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF212123),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 20.0),
                                child: Text(
                                  'Accede a tus \nrecompensas y logros',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('btnLogros pressed ...');
                                  },
                                  text: 'Logros...',
                                  options: FFButtonOptions(
                                    width: 110.0,
                                    height: 30.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFF7B4CC2),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/pexels-jeshoots-com-147458-442576.jpg',
                        width: 352.0,
                        height: 158.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Unete a nuestra increible comunidad donde \npodras ingresar a equipos!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('btnComunidad pressed ...');
                          },
                          text: 'Comunidad..',
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 30.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF7B4CC2),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
