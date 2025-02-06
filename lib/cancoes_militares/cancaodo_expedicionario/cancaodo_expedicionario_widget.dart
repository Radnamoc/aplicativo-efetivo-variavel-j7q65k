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
import 'cancaodo_expedicionario_model.dart';
export 'cancaodo_expedicionario_model.dart';

class CancaodoExpedicionarioWidget extends StatefulWidget {
  const CancaodoExpedicionarioWidget({super.key});

  @override
  State<CancaodoExpedicionarioWidget> createState() =>
      _CancaodoExpedicionarioWidgetState();
}

class _CancaodoExpedicionarioWidgetState
    extends State<CancaodoExpedicionarioWidget> with TickerProviderStateMixin {
  late CancaodoExpedicionarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancaodoExpedicionarioModel());

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
                            16.0, 44.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 250.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xF4F20808),
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
                                    text: 'Canção do Expedicionário',
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
                                        'Você sabe de onde eu venho?\nVenho do morro, do Engenho\nDas selvas, dos cafezais\nDa boa terra do coco\nDa choupana onde um é pouco\nDois é bom, três é demais\n\nVenho das praias sedosas\nDas montanhas alterosas\nDo pampa, do seringal\nDas margens crespas dos rios\nDos verdes mares bravios\nDa minha terra natal\n\nPor mais terras que eu percorra\nNão permita Deus que eu morra\nSem que volte para lá\nSem que leve por divisa\nEsse V que simboliza\nA vitória que virá\n\nNossa vitória final\nQue é mira do meu fuzil\nA ração do meu bornal\nA água do meu cantil\nAs asas do meu ideal\nA glória do meu Brasil\n\nEu venho da minha terra\nDa casa branca da serra\nE do luar do meu sertão\nVenho da minha Maria\nCujo nome principia\nNa palma da minha mão\n\nBraços mornos de Moema\nLábios de mel de Iracema\nEstendidos pra mim\nÓ, minha terra querida\nDa Senhora Aparecida\nE do Senhor do Bonfim\n\nPor mais terras que eu percorra\nNão permita Deus que eu morra\nSem que volte para lá\nSem que leve por divisa\nEsse V que simboliza\nA vitória que virá\n\nNossa vitória final\nQue é a mira do meu fuzil\nA ração do meu bornal\nA água do meu cantil\nAs asas do meu ideal\nA glória do meu Brasil\n\nVocê sabe de onde eu venho?\nÉ de uma Pátria que eu tenho\nNo bojo do meu violão\nQue de viver em meu peito\nFoi até tomando jeito\nDe um enorme coração\n\nDeixei lá atrás meu terreno\nMeu limão, meu limoeiro\nMeu pé de jacarandá\nMinha casa pequenina\nLá no alto da colina\nOnde canta o sabiá\n\nPor mais terras que eu percorra\nNão permita Deus que eu morra\nSem que volte para lá\nSem que leve por divisa\nEsse V que simboliza\nA vitória que virá\n\nNossa vitória final\nQue é a mira do meu fuzil\nA ração do meu bornal\nA água do meu cantil\nAs asas do meu ideal\nA glória do meu Brasil\n\nVenho de além desse monte\nQue ainda azula no horizonte\nOnde o nosso amor nasceu\nDo rancho que tinha ao lado\nUm coqueiro que, coitado\nDe saudade já morreu\n\nVenho do verde mais belo\nDo mais dourado amarelo\nDo azul mais cheio de luz\nCheio de estrelas prateadas\nQue se ajoelham deslumbradas\nFazendo o sinal da Cruz\n\nPor mais terras que eu percorra\nNão permita Deus que eu morra\nSem que volte para lá\nSem que leve por divisa\nEsse V que simboliza\nA vitória que virá\n\nNossa vitória final\nQue é a mira do meu fuzil\nA ração do meu bornal\nA água do meu cantil\nAs asas do meu ideal\nA glória do meu Brasil!',
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
                    'https://www.youtube.com/watch?v=lmqoUPuNBNM&list=PLnkYkTv4HbMZE1p8IQnYXvyEftb0zl2UM&index=3',
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
