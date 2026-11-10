import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'editar_producto_page_widget.dart' show EditarProductoPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarProductoPageModel
    extends FlutterFlowModel<EditarProductoPageWidget> {
  ///  Local state fields for this page.

  bool accesoAdmin = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Read Document] action in EditarProductoPage widget.
  UsersRecord? usuarioActivo;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  String? _txtDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se necesita una descripción.';
    }

    if (val.length > 600) {
      return 'Maximum 600 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  String? _txtPrecioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El precio es requerido.';
    }

    if (!RegExp('^[0-9]+\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for ddDisponibilidad widget.
  String? ddDisponibilidadValue;
  FormFieldController<String>? ddDisponibilidadValueController;

  @override
  void initState(BuildContext context) {
    txtDescripcionTextControllerValidator =
        _txtDescripcionTextControllerValidator;
    txtPrecioTextControllerValidator = _txtPrecioTextControllerValidator;
  }

  @override
  void dispose() {
    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();
  }
}
