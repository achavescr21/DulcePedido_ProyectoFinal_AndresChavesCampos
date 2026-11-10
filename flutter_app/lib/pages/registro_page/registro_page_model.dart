import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'registro_page_widget.dart' show RegistroPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroPageModel extends FlutterFlowModel<RegistroPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombreRegistro widget.
  FocusNode? txtNombreRegistroFocusNode;
  TextEditingController? txtNombreRegistroTextController;
  String? Function(BuildContext, String?)?
      txtNombreRegistroTextControllerValidator;
  String? _txtNombreRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere ingresar el nombre completo.';
    }

    return null;
  }

  // State field(s) for txtCorreoRegistro widget.
  FocusNode? txtCorreoRegistroFocusNode;
  TextEditingController? txtCorreoRegistroTextController;
  String? Function(BuildContext, String?)?
      txtCorreoRegistroTextControllerValidator;
  String? _txtCorreoRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo electrónico es requerido.';
    }

    return null;
  }

  // State field(s) for txtTelefonoRegistro widget.
  FocusNode? txtTelefonoRegistroFocusNode;
  TextEditingController? txtTelefonoRegistroTextController;
  String? Function(BuildContext, String?)?
      txtTelefonoRegistroTextControllerValidator;
  String? _txtTelefonoRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El teléfono es requerido.';
    }

    if (!RegExp('^[0-9]{4}-?[0-9]{4}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtClaveRegistro widget.
  late FocusNode txtClaveRegistroPasswordVisibilityFocusNode;
  FocusNode? txtClaveRegistroFocusNode;
  TextEditingController? txtClaveRegistroTextController;
  late bool txtClaveRegistroVisibility;
  String? Function(BuildContext, String?)?
      txtClaveRegistroTextControllerValidator;
  String? _txtClaveRegistroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es requerida.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNombreRegistroTextControllerValidator =
        _txtNombreRegistroTextControllerValidator;
    txtCorreoRegistroTextControllerValidator =
        _txtCorreoRegistroTextControllerValidator;
    txtTelefonoRegistroTextControllerValidator =
        _txtTelefonoRegistroTextControllerValidator;
    txtClaveRegistroPasswordVisibilityFocusNode = FocusNode();
    txtClaveRegistroVisibility = false;
    txtClaveRegistroTextControllerValidator =
        _txtClaveRegistroTextControllerValidator;
  }

  @override
  void dispose() {
    txtNombreRegistroFocusNode?.dispose();
    txtNombreRegistroTextController?.dispose();

    txtCorreoRegistroFocusNode?.dispose();
    txtCorreoRegistroTextController?.dispose();

    txtTelefonoRegistroFocusNode?.dispose();
    txtTelefonoRegistroTextController?.dispose();

    txtClaveRegistroFocusNode?.dispose();
    txtClaveRegistroTextController?.dispose();
    txtClaveRegistroPasswordVisibilityFocusNode.dispose();
  }
}
