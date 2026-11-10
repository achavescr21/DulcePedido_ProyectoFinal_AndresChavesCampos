import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/foto_producto_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'productos_admin_page_widget.dart' show ProductosAdminPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductosAdminPageModel
    extends FlutterFlowModel<ProductosAdminPageWidget> {
  ///  Local state fields for this page.

  bool accesoAdmin = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in ProductosAdminPage widget.
  UsersRecord? usuarioActivo;
  // Models for FotoProducto dynamic component.
  late FlutterFlowDynamicModels<FotoProductoModel> fotoProductoModels;

  @override
  void initState(BuildContext context) {
    fotoProductoModels = FlutterFlowDynamicModels(() => FotoProductoModel());
  }

  @override
  void dispose() {
    fotoProductoModels.dispose();
  }
}
