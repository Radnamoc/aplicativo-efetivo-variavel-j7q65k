import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:math';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancaodascomunicacoes_model.dart';
export 'cancaodascomunicacoes_model.dart';

class CancaodascomunicacoesWidget extends StatefulWidget {
  const CancaodascomunicacoesWidget({super.key});

  @override
  State<CancaodascomunicacoesWidget> createState() =>
      _CancaodascomunicacoesWidgetState();
}

class _CancaodascomunicacoesWidgetState
    extends State<CancaodascomunicacoesWidget> with TickerProviderStateMixin {
  late CancaodascomunicacoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancaodascomunicacoesModel());

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
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/clement-m-SsMMCEwFMuc-unsplash_(1).jpg',
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 250.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xF0F80808),
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: Color(0xFFFCEC20),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation']!),
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
                                labelColor: Color(0xFFFCEC20),
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle: TextStyle(),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                padding: EdgeInsets.all(4.0),
                                tabs: [
                                  Tab(
                                    text: 'Canção da Arma de Comunicações',
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
                                      Text(
                                        'Pelas estradas sem fim, ou pelo campo caminha a glória\nOs nossos fios, as nossas antenas transmitem essas vitórias\nQuando soa a metralha ou o ronco dos canhões\nNos céus da pátria ecoa, teu nome, Comunicações\n\nE quando a vitória vier\nAlguém falará no porvir\nNa paz, assim como na guerra\nTeu lema é sempre servir\n\nE quando a vitória vier\nAlguém falará no porvir\nNa paz, assim como na guerra\nTeu lema é sempre servir\n\nDentro das noites escuras, o teu trabalho silente será\nE nessa mudez, somente a bravura, ao teu lado caminhará\nSempre estarás na vanguarda e cumprirás do comando as missões\nCom o nome de Rondon, pulsando em nossos corações\n\nE quando a vitória vier\nAlguém falará no porvir\nNa paz, assim como na guerra\nTeu lema é sempre servir\n\nE quando a vitória vier\nAlguém falará no porvir\nNa paz, assim como na guerra\nTeu lema é sempre servir',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                            ),
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
              ),
              FlutterFlowYoutubePlayer(
                url:
                    'https://www.youtube.com/watch?v=leSKPRl-KLU&list=PLnkYkTv4HbMZE1p8IQnYXvyEftb0zl2UM&index=11',
                autoPlay: false,
                looping: true,
                mute: false,
                showControls: true,
                showFullScreen: true,
                strictRelatedVideos: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
