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
import 'cancaodo_fibrade_heroi_model.dart';
export 'cancaodo_fibrade_heroi_model.dart';

class CancaodoFibradeHeroiWidget extends StatefulWidget {
  const CancaodoFibradeHeroiWidget({super.key});

  @override
  State<CancaodoFibradeHeroiWidget> createState() =>
      _CancaodoFibradeHeroiWidgetState();
}

class _CancaodoFibradeHeroiWidgetState extends State<CancaodoFibradeHeroiWidget>
    with TickerProviderStateMixin {
  late CancaodoFibradeHeroiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancaodoFibradeHeroiModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/brook-anderson-gTQbZXL417Q-unsplash.jpg',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
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
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: Color(0x33090F13),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ).animateOnPageLoad(
                          animationsMap['iconButtonOnPageLoadAnimation']!),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: Color(0xFF2458BE),
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: EdgeInsets.all(4.0),
                          tabs: [
                            Tab(
                              text: 'Canção Fibra de Herói',
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
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Text(
                                              'Se a Pátria querida\nFor envolvida pelo inimigo\nNa paz ou na guerra\nDefende a terra contra o perigo\n\nCom ânimo forte, se for preciso\nEnfrenta a morte\nAfronta se lava com fibra de herói\nDe gente brava\n\nBandeira do Brasil\nNinguém te manchará\nTeu povo varonil\nIsso não consentirá\n\nBandeira idolatrada\nAltiva a tremular\nOnde a liberdade é mais uma estrela a brilhar\n\nBandeira do Brasil\nNinguém te manchará\nTeu povo varonil\nIsso não consentirá\n\nBandeira idolatrada\nAltiva a tremular\nOnde a liberdade é mais uma estrela a brilhar\n\nSe a Pátria querida\nFor envolvida pelo inimigo\nNa paz ou na guerra\nDefende a terra contra o perigo\n\nCom ânimo forte, se for preciso\nEnfrenta a morte\nAfronta se lava com fibra de herói\nDe gente brava\n\nBandeira do Brasil\nNinguém te manchará\nTeu povo varonil\nIsso não consentirá\n\nBandeira idolatrada\nAltiva a tremular\nOnde a liberdade é mais uma estrela a brilhar\n\nBandeira do Brasil\nNinguém te manchará\nTeu povo varonil\nIsso não consentirá\n\nBandeira idolatrada\nAltiva a tremular\nOnde a liberdade é mais uma estrela a brilhar',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF010101),
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/cancao_fibra_de_herois.mp3',
                    metas: Metas(
                      id: 'cancao_fibra_de_herois.mp3-3add9696',
                      title: 'Canção Fibra de Herói',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: Color(0xFFFD1919),
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4.0,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
