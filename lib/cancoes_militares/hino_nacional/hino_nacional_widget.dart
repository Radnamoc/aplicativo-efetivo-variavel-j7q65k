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
import 'hino_nacional_model.dart';
export 'hino_nacional_model.dart';

class HinoNacionalWidget extends StatefulWidget {
  const HinoNacionalWidget({super.key});

  @override
  State<HinoNacionalWidget> createState() => _HinoNacionalWidgetState();
}

class _HinoNacionalWidgetState extends State<HinoNacionalWidget>
    with TickerProviderStateMixin {
  late HinoNacionalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HinoNacionalModel());

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
        child: WillPopScope(
          onWillPop: () async => false,
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 150.0, 0.0, 0.0),
                        child: Text(
                          'Hello World',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                        'assets/images/clement-m-SsMMCEwFMuc-unsplash_(1).jpg',
                      ).image,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 10.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 250.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: Color(0xFFF60007),
                                borderRadius: 30.0,
                                borderWidth: 3.0,
                                buttonSize: 50.0,
                                fillColor: Color(0xFFFCEC20),
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color(0xFF404141),
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('PaginaInicial1');
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
                                unselectedLabelColor: Color(0xFF2458BE),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle: TextStyle(),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                padding: EdgeInsets.all(4.0),
                                tabs: [
                                  Tab(
                                    text: 'Hino Nacional Brasileiro',
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Ouviram do Ipiranga as margens plácidas\nDe um povo heroico, o brado retumbante\nE o Sol da liberdade, em raios fúlgidos\nBrilhou no céu da pátria nesse instante\n\nSe o penhor dessa igualdade\nConseguimos conquistar com braço forte\nEm teu seio, ó liberdade\nDesafia o nosso peito a própria morte\n\nÓ Pátria amada\nIdolatrada\nSalve! Salve!\n\nBrasil, um sonho intenso, um raio vívido\nDe amor e de esperança, à terra desce\nSe em teu formoso céu, risonho e límpido\nA imagem do Cruzeiro resplandece\n\nGigante pela própria natureza\nÉs belo, és forte, impávido colosso\nE o teu futuro espelha essa grandeza\n\nTerra adorada\nEntre outras mil\nÉs tu, Brasil\nÓ Pátria amada!\nDos filhos deste solo, és mãe gentil\nPátria amada, Brasil!\n\nDeitado eternamente em berço esplêndido\nAo som do mar e à luz do céu profundo\nFulguras, ó Brasil, florão da América\nIluminado ao Sol do Novo Mundo!\n\nDo que a terra mais garrida\nTeus risonhos, lindos campos têm mais flores\nNossos bosques têm mais vida\nNossa vida, no teu seio, mais amores\n\nÓ Pátria amada\nIdolatrada\nSalve! Salve!\n\nBrasil, de amor eterno seja símbolo\nO lábaro que ostentas estrelado\nE diga o verde-louro dessa flâmula\nPaz no futuro e glória no passado\n\nMas se ergues da justiça a clava forte\nVerás que um filho teu não foge à luta\nNem teme, quem te adora, a própria morte\n\nTerra adorada\nEntre outras mil\nÉs tu, Brasil\nÓ Pátria amada!\nDos filhos deste solo, és mãe gentil\nPátria amada, Brasil!',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
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
                FlutterFlowYoutubePlayer(
                  url: 'https://www.youtube.com/watch?v=rLqj2LUm5l0',
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
      ),
    );
  }
}
