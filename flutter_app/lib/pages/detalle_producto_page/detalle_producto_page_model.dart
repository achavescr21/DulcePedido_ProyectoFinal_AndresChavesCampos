import '/backend/backend.dart';
import '/components/foto_producto_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'detalle_producto_page_widget.dart' show DetalleProductoPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalleProductoPageModel
    extends FlutterFlowModel<DetalleProductoPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FotoProducto component.
  late FotoProductoModel fotoProductoModel;

  @override
  void initState(BuildContext context) {
    fotoProductoModel = createModel(context, () => FotoProductoModel());
  }

  @override
  void dispose() {
    fotoProductoModel.dispose();
  }
}
