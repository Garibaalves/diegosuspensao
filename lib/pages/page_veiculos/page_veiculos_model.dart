import '/components/header_page_widget.dart';
import '/components/menu_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'page_veiculos_widget.dart' show PageVeiculosWidget;
import 'package:flutter/material.dart';

class PageVeiculosModel extends FlutterFlowModel<PageVeiculosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuNavbar component.
  late MenuNavbarModel menuNavbarModel;
  // Model for headerPage component.
  late HeaderPageModel headerPageModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    menuNavbarModel = createModel(context, () => MenuNavbarModel());
    headerPageModel = createModel(context, () => HeaderPageModel());
  }

  @override
  void dispose() {
    menuNavbarModel.dispose();
    headerPageModel.dispose();
  }
}
