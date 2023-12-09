import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'wrongemailorpsw_model.dart';
export 'wrongemailorpsw_model.dart';

class WrongemailorpswWidget extends StatefulWidget {
  const WrongemailorpswWidget({super.key});

  @override
  _WrongemailorpswWidgetState createState() => _WrongemailorpswWidgetState();
}

class _WrongemailorpswWidgetState extends State<WrongemailorpswWidget> {
  late WrongemailorpswModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WrongemailorpswModel());
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
        Align(
          alignment: const AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
            child: Container(
              width: 298.0,
              height: 161.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.05, -0.09),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'Wrong email or password\nPlease try again. ',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 23.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(250.0, 15.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).error,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
