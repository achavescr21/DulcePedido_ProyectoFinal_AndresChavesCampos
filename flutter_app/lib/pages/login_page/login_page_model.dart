import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCorreoLogin widget.
  FocusNode? txtCorreoLoginFocusNode;
  TextEditingController? txtCorreoLoginTextController;
  String? Function(BuildContext, String?)?
      txtCorreoLoginTextControllerValidator;
  String? _txtCorreoLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa tu correo.';
    }

    return null;
  }

  // State field(s) for txtClaveLogin widget.
  late FocusNode txtClaveLoginPasswordVisibilityFocusNode;
  FocusNode? txtClaveLoginFocusNode;
  TextEditingController? txtClaveLoginTextController;
  late bool txtClaveLoginVisibility;
  String? Function(BuildContext, String?)? txtClaveLoginTextControllerValidator;
  String? _txtClaveLoginTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa tu contraseña.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtCorreoLoginTextControllerValidator =
        _txtCorreoLoginTextControllerValidator;
    txtClaveLoginPasswordVisibilityFocusNode = FocusNode();
    txtClaveLoginVisibility = false;
    txtClaveLoginTextControllerValidator =
        _txtClaveLoginTextControllerValidator;
  }

  @override
  void dispose() {
    txtCorreoLoginFocusNode?.dispose();
    txtCorreoLoginTextController?.dispose();

    txtClaveLoginFocusNode?.dispose();
    txtClaveLoginTextController?.dispose();
    txtClaveLoginPasswordVisibilityFocusNode.dispose();
  }
}
