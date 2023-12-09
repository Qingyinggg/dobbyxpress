import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'rateus_model.dart';
export 'rateus_model.dart';

class RateusWidget extends StatefulWidget {
  const RateusWidget({super.key});

  @override
  _RateusWidgetState createState() => _RateusWidgetState();
}

class _RateusWidgetState extends State<RateusWidget> {
  late RateusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateusModel());
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
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
          child: Container(
            width: 300.0,
            height: 250.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.93, -0.77),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Rate Us',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, -0.73),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
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
                            size: 24.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.39, -0.31),
                  child: RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        setState(() => _model.ratingBarValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: FlutterFlowTheme.of(context).tertiary,
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue ??= 0.0,
                    unratedColor: FlutterFlowTheme.of(context).accent3,
                    itemCount: 5,
                    itemSize: 40.0,
                    glowColor: FlutterFlowTheme.of(context).tertiary,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.05, 0.35),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await FeedbackRecord.collection
                          .doc()
                          .set(createFeedbackRecordData(
                            rating: _model.ratingBarValue,
                          ));
                      Navigator.pop(context);
                    },
                    text: 'Submit',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF75C1FF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
