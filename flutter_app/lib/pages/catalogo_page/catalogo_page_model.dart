import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/foto_producto_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'catalogo_page_widget.dart' show CatalogoPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class CatalogoPageModel extends FlutterFlowModel<CatalogoPageWidget> {
  ///  Local state fields for this page.

  bool busquedaActiva = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in CatalogoPage widget.
  UsersRecord? usuarioActivo;
  List<ProductosRecord> simpleSearchResults = [];
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarTextController;
  String? Function(BuildContext, String?)? txtBuscarTextControllerValidator;
  // Models for FotoProducto dynamic component.
  late FlutterFlowDynamicModels<FotoProductoModel> fotoProductoModels;

  @override
  void initState(BuildContext context) {
    fotoProductoModels = FlutterFlowDynamicModels(() => FotoProductoModel());
  }

  @override
  void dispose() {
    txtBuscarFocusNode?.dispose();
    txtBuscarTextController?.dispose();

    fotoProductoModels.dispose();
  }
}
