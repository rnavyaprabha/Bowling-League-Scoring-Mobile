import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'score_display_model.dart';
export 'score_display_model.dart';

class ScoreDisplayWidget extends StatefulWidget {
  const ScoreDisplayWidget({
    super.key,
    required this.player1,
    required this.player2,
    required this.teamId,
    this.gameId,
  });

  final int? player1;
  final int? player2;
  final int? teamId;
  final int? gameId;

  @override
  State<ScoreDisplayWidget> createState() => _ScoreDisplayWidgetState();
}

class _ScoreDisplayWidgetState extends State<ScoreDisplayWidget>
    with TickerProviderStateMixin {
  late ScoreDisplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScoreDisplayModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getGameScores = await GamesGroup.getScoreByGameCall.call(
        gameId: widget.gameId,
        jwt: currentAuthenticationToken,
      );
      _model.getTeamResult = await GamesGroup.getTeamScoreCall.call(
        teamId: widget.teamId,
        jwt: currentAuthenticationToken,
      );
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0x230F1113),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.player1?.toString(),
                            'Player 1',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Text(
                        getJsonField(
                          (_model.getGameScores?.jsonBody ?? ''),
                          r'''$[0].totalScore''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Noto Serif',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.handshake_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 44.0,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.player2?.toString(),
                            'Player 2',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Text(
                        getJsonField(
                          (_model.getGameScores?.jsonBody ?? ''),
                          r'''$[1].totalScore''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Noto Serif',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 4.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.teamId?.toString(),
                                  'Team Score',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              getJsonField(
                                (_model.getTeamResult?.jsonBody ?? ''),
                                r'''$[0].totalScore''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
