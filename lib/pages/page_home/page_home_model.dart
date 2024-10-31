import '/components/header_page_widget.dart';
import '/components/menu_navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'page_home_widget.dart' show PageHomeWidget;
import 'package:flutter/material.dart';

class PageHomeModel extends FlutterFlowModel<PageHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuNavbar component.
  late MenuNavbarModel menuNavbarModel;
  // Model for headerPage component.
  late HeaderPageModel headerPageModel;

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
