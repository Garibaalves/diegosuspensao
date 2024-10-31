import '/components/header_page_widget.dart';
import '/components/menu_navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'page_home_model.dart';
export 'page_home_model.dart';

class PageHomeWidget extends StatefulWidget {
  const PageHomeWidget({super.key});

  @override
  State<PageHomeWidget> createState() => _PageHomeWidgetState();
}

class _PageHomeWidgetState extends State<PageHomeWidget> {
  late PageHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageHomeModel());

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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.menuNavbarModel,
                updateCallback: () => safeSetState(() {}),
                child: const MenuNavbarWidget(),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).zinc950,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.headerPageModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const HeaderPageWidget(
                          tituloPage: 'Dasboard',
                          descriptionPage:
                              'Acompanhe todos os indicadores de performanse da sua loja',
                        ),
                      ),
                    ],
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
