import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'item_menu_model.dart';
export 'item_menu_model.dart';

class ItemMenuWidget extends StatefulWidget {
  const ItemMenuWidget({
    super.key,
    required this.text,
    required this.icone,
    required this.actions,
    required this.iconActive,
  });

  final String? text;
  final Widget? icone;
  final Future Function()? actions;
  final Widget? iconActive;

  @override
  State<ItemMenuWidget> createState() => _ItemMenuWidgetState();
}

class _ItemMenuWidgetState extends State<ItemMenuWidget> {
  late ItemMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemMenuModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.pageActive = widget.text == FFAppState().pageNavigate;
      safeSetState(() {});
    });

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

    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.actions?.call();
        },
        child: Container(
          width: double.infinity,
          height: 45.0,
          decoration: BoxDecoration(
            color: _model.mouseRegionHovered
                ? FlutterFlowTheme.of(context).zinc800
                : FlutterFlowTheme.of(context).zinc900,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!_model.pageActive!)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: widget.icone!,
                  ),
                if (_model.pageActive ?? true)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: widget.iconActive!,
                  ),
                if (FFAppState().menuEspandido)
                  Text(
                    valueOrDefault<String>(
                      widget.text,
                      'Dashboard',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).zinc300,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
