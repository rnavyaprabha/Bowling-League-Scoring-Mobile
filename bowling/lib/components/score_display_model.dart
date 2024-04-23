import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'score_display_widget.dart' show ScoreDisplayWidget;
import 'package:flutter/material.dart';

class ScoreDisplayModel extends FlutterFlowModel<ScoreDisplayWidget> {
  ///  Local state fields for this component.

  int? score1;

  int? score2;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getScoreByGame)] action in scoreDisplay widget.
  ApiCallResponse? getGameScores;
  // Stores action output result for [Backend Call - API (getTeamScore)] action in scoreDisplay widget.
  ApiCallResponse? getTeamResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
