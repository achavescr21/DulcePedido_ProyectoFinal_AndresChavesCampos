import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'perfil_page_widget.dart' show PerfilPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilPageModel extends FlutterFlowModel<PerfilPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombrePerfil widget.
  FocusNode? txtNombrePerfilFocusNode;
  TextEditingController? txtNombrePerfilTextController;
  String? Function(BuildContext, String?)?
      txtNombrePerfilTextControllerValidator;
  String? _txtNombrePerfilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere el nombre del perfil.';
    }

    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtTelefonoPerfil widget.
  FocusNode? txtTelefonoPerfilFocusNode;
  TextEditingController? txtTelefonoPerfilTextController;
  String? Function(BuildContext, String?)?
      txtTelefonoPerfilTextControllerValidator;
  String? _txtTelefonoPerfilTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se necesita el número de teléfono';
    }

    if (!RegExp('^[0-9]{4}-?[0-9]{4}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Correoelectronico widget.
  FocusNode? correoelectronicoFocusNode;
  TextEditingController? correoelectronicoTextController;
  String? Function(BuildContext, String?)?
      correoelectronicoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtNombrePerfilTextControllerValidator =
        _txtNombrePerfilTextControllerValidator;
    txtTelefonoPerfilTextControllerValidator =
        _txtTelefonoPerfilTextControllerValidator;
  }

  @override
  void dispose() {
    txtNombrePerfilFocusNode?.dispose();
    txtNombrePerfilTextController?.dispose();

    txtTelefonoPerfilFocusNode?.dispose();
    txtTelefonoPerfilTextController?.dispose();

    correoelectronicoFocusNode?.dispose();
    correoelectronicoTextController?.dispose();
  }
}
