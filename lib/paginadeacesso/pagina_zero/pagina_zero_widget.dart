import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_zero_model.dart';
export 'pagina_zero_model.dart';

class PaginaZeroWidget extends StatefulWidget {
  const PaginaZeroWidget({super.key});

  @override
  State<PaginaZeroWidget> createState() => _PaginaZeroWidgetState();
}

class _PaginaZeroWidgetState extends State<PaginaZeroWidget> {
  late PaginaZeroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaZeroModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.35),
                  child: Container(
                    height: 312.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFE60909),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Image.asset(
                            'assets/images/bda_montanha_2.jpg',
                            width: 580.0,
                            height: 326.0,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.0, -1.0),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.01, -0.07),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 35.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/logo_nova.png',
                                width: 100.0,
                                height: 136.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 310.0, 0.0, 0.0),
                child: Container(
                  height: 80.0,
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    'assets/images/image-removebg-preview_(22).png',
                    width: MediaQuery.sizeOf(context).width * 3.056,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          FFButtonWidget(
            onPressed: () async {
              context.pushNamed('SuccessPage');
            },
            text: 'Clique e acesse',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFFFCBE20),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFF00606),
                    letterSpacing: 0.0,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ],
      ),
    );
  }
}
