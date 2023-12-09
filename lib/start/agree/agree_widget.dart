import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'agree_model.dart';
export 'agree_model.dart';

class AgreeWidget extends StatefulWidget {
  const AgreeWidget({super.key});

  @override
  _AgreeWidgetState createState() => _AgreeWidgetState();
}

class _AgreeWidgetState extends State<AgreeWidget> {
  late AgreeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgreeModel());
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
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
          child: Container(
            width: 300.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.91, -0.78),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 0.0, 0.0),
                    child: Text(
                      'Please agree to the \nprivacy policy.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, -0.77),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.98, -0.74),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close_sharp,
                              color: FlutterFlowTheme.of(context).error,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
