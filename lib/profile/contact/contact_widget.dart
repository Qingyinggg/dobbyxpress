import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_model.dart';
export 'contact_model.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  late ContactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactModel());
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
              height: 250.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(16.0),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.68, -1.08),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'Contact Us\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Align(
                            alignment: AlignmentDirectional(-0.74, -0.74),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 45.0, 10.0, 0.0),
                              child: Icon(
                                Icons.phone,
                                color: Color(0xFF75C1FF),
                                size: 23.0,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.28, -0.73),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 45.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchUrl(Uri(
                                    scheme: 'tel',
                                    path: '012-3456789',
                                  ));
                                },
                                child: Text(
                                  '012-3456789',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, -1.02),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
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
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Align(
                              alignment: AlignmentDirectional(-0.74, -0.74),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 45.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.email,
                                  color: Color(0xFF75C1FF),
                                  size: 23.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.28, -0.73),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 45.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchUrl(Uri(
                                      scheme: 'tel',
                                      path: '012-3456789',
                                    ));
                                  },
                                  child: Text(
                                    'abc@gmail.com',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
