import '/components/item_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_navbar_model.dart';
export 'menu_navbar_model.dart';

class MenuNavbarWidget extends StatefulWidget {
  const MenuNavbarWidget({super.key});

  @override
  State<MenuNavbarWidget> createState() => _MenuNavbarWidgetState();
}

class _MenuNavbarWidgetState extends State<MenuNavbarWidget> {
  late MenuNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuNavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: FFAppState().menuEspandido ? 200.0 : 58.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).zinc950,
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).zinc800,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().menuEspandido =
                            !(FFAppState().menuEspandido ?? true);
                        safeSetState(() {});
                      },
                      child: Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).zinc600,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (FFAppState().menuEspandido)
                              Icon(
                                FFIcons.kchevronLeft,
                                color: FlutterFlowTheme.of(context).zinc950,
                                size: 24.0,
                              ),
                            if (!FFAppState().menuEspandido)
                              Icon(
                                FFIcons.kchevronRight,
                                color: FlutterFlowTheme.of(context).zinc950,
                                size: 24.0,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (FFAppState().menuEspandido)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 170.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                if (!FFAppState().menuEspandido)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/iconDiegosuspensao.png',
                      width: 60.0,
                      fit: BoxFit.contain,
                    ),
                  ),
              ].divide(const SizedBox(height: 16.0)),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.itemMenuModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Dashboard',
                        icone: Icon(
                          FFIcons.ksmartHome,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.ksmartHome,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {
                          context.pushNamed(
                            'pageVeiculos',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          FFAppState().pageNavigate = 'Dashboard';
                          safeSetState(() {});
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Clientes',
                        icone: Icon(
                          FFIcons.kusersPlus,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kusersPlus,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {
                          FFAppState().pageNavigate = 'Clientes';
                          safeSetState(() {});
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Veiculos',
                        icone: Icon(
                          FFIcons.kcar,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kcar,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {
                          FFAppState().pageNavigate = 'Veiculos';
                          safeSetState(() {});

                          context.pushNamed(
                            'pageHome',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Colaboradores',
                        icone: Icon(
                          FFIcons.kuser,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kuser,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Fornecedores',
                        icone: Icon(
                          FFIcons.kshoppingBag01,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kshoppingBag01,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Produtos',
                        icone: Icon(
                          FFIcons.kshoppingCart03,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kshoppingCart01,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Orçamento',
                        icone: Icon(
                          FFIcons.kfileLike,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kfileLike,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel8,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Ordem de serviço',
                        icone: Icon(
                          FFIcons.kadjustmentsCog,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kadjustmentsCog,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemMenuModel9,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemMenuWidget(
                        text: 'Financeiro',
                        icone: Icon(
                          FFIcons.kcash,
                          color: FlutterFlowTheme.of(context).zinc300,
                          size: 22.0,
                        ),
                        iconActive: Icon(
                          FFIcons.kcash,
                          color: FlutterFlowTheme.of(context).red600,
                          size: 22.0,
                        ),
                        actions: () async {},
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MouseRegion(
                    opaque: false,
                    cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                    onEnter: ((event) async {
                      safeSetState(() => _model.mouseRegionSairHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(() => _model.mouseRegionSairHovered = false);
                    }),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionSairHovered
                              ? FlutterFlowTheme.of(context).zinc900
                              : FlutterFlowTheme.of(context).zinc950,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).zinc800,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (FFAppState().menuEspandido)
                              Expanded(
                                child: Text(
                                  'Sair do sistema',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .zinc300,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            Icon(
                              FFIcons.klogIn01,
                              color: FlutterFlowTheme.of(context).zinc300,
                              size: 22.0,
                            ),
                          ]
                              .divide(const SizedBox(width: 8.0))
                              .around(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    opaque: false,
                    cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                    onEnter: ((event) async {
                      safeSetState(
                          () => _model.mouseRegionProfileHovered = true);
                    }),
                    onExit: ((event) async {
                      safeSetState(
                          () => _model.mouseRegionProfileHovered = false);
                    }),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).zinc800,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/562/600',
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (FFAppState().menuEspandido)
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Garibaldi Neto',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .zinc300,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      'Programador',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .zinc300,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            if (FFAppState().menuEspandido)
                              Icon(
                                FFIcons.kdotsVertical,
                                color: FlutterFlowTheme.of(context).zinc300,
                                size: 20.0,
                              ),
                          ]
                              .divide(const SizedBox(width: 8.0))
                              .around(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 16.0)),
      ),
    );
  }
}
