import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'foto_producto_model.dart';
export 'foto_producto_model.dart';

class FotoProductoWidget extends StatefulWidget {
  const FotoProductoWidget({
    super.key,
    this.clave,
  });

  final String? clave;

  @override
  State<FotoProductoWidget> createState() => _FotoProductoWidgetState();
}

class _FotoProductoWidgetState extends State<FotoProductoWidget> {
  late FotoProductoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FotoProductoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget!.clave == 'queque_chocolate') {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/queque_chocolate.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          );
        } else if (widget!.clave == 'cupcakes_vainilla') {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/cupcakes_vainilla.png',
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          );
        } else {
          return Icon(
            Icons.image,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 50.0,
          );
        }
      },
    );
  }
}
