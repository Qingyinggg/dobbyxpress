import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pleasepay_model.dart';
export 'pleasepay_model.dart';

class PleasepayWidget extends StatefulWidget {
  const PleasepayWidget({super.key});

  @override
  _PleasepayWidgetState createState() => _PleasepayWidgetState();
}

class _PleasepayWidgetState extends State<PleasepayWidget> {
  late PleasepayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PleasepayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
            child: Container(
              width: 300.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
                shape: BoxShape.rectangle,
              ),
              child: Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                direction: Axis.horizontal,
                runAlignment: WrapAlignment.start,
                verticalDirection: VerticalDirection.down,
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(240.0, 10.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).error,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'Please choose \nyour payment method.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
