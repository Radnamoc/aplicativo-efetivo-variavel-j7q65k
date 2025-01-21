import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hinoa_bandeira_model.dart';
export 'hinoa_bandeira_model.dart';

class HinoaBandeiraWidget extends StatefulWidget {
  const HinoaBandeiraWidget({super.key});

  @override
  State<HinoaBandeiraWidget> createState() => _HinoaBandeiraWidgetState();
}

class _HinoaBandeiraWidgetState extends State<HinoaBandeiraWidget>
    with TickerProviderStateMixin {
  late HinoaBandeiraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HinoaBandeiraModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.5, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: Stack(
          children: [
            Container(
              width: 413.0,
              height: 799.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                    child: Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Bandeira-do-Brasil-12.07.2016.-fotos-de-sio-Mendes-8.jpg',
                  ).image,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).grayIcon,
                            borderRadius: 30.0,
                            borderWidth: 3.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x33090F13),
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFF404141),
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ).animateOnPageLoad(
                              animationsMap['iconButtonOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).accent4,
                            unselectedLabelColor: Color(0xFF2458BE),
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            unselectedLabelStyle: TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            padding: EdgeInsets.all(4.0),
                            tabs: [
                              Tab(
                                text: 'Hino a Bandeira',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Salve, lindo pendão da esperança!\nSalve, símbolo augusto da paz!\nTua nobre presença à lembrança\nA grandeza da Pátria nos traz\n\nRecebe o afeto que se encerra\nEm nosso peito juvenil\nQuerido símbolo da terra\nDa amada terra do Brasil!\n\nEm teu seio formoso retratas\nEste céu de puríssimo azul\nA verdura sem par destas matas\nE o esplendor do Cruzeiro do Sul\n\nRecebe o afeto que se encerra\nEm nosso peito juvenil\nQuerido símbolo da terra\nDa amada terra do Brasil!\n\nContemplando o teu vulto sagrado\nCompreendemos o nosso dever\nE o Brasil por teus filhos amado\nPoderoso e feliz há de ser!\n\nRecebe o afeto que se encerra\nEm nosso peito juvenil\nQuerido símbolo da terra\nDa amada terra do Brasil!\n\nSobre a imensa Nação Brasileira\nNos momentos de festa ou de dor\nPaira sempre sagrada bandeira\nPavilhão da justiça e do amor!\n\nRecebe o afeto que se encerra\nEm nosso peito juvenil\nQuerido símbolo da terra\nDa amada terra do Brasil!',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FlutterFlowAudioPlayer(
                                      audio: Audio(
                                        'assets/audios/hino-da-bandeira-nacional-do-Brasil.mp3',
                                        metas: Metas(
                                          id: 'hino-da-bandeira-nacional-do-Brasil.mp3-999a0dc2',
                                          title: '   Hino a Bandeira Nacional',
                                        ),
                                      ),
                                      titleTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                      playbackDurationTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      playbackButtonColor: Color(0xFFFD1919),
                                      activeTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      elevation: 4.0,
                                      playInBackground: PlayInBackground
                                          .disabledRestoreOnForeground,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  ),
                                ],
                              ),
                            ],
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
      ),
    );
  }
}
