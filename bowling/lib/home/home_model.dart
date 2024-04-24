import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetUserDetails)] action in home widget.
  ApiCallResponse? getUserDetails;
  // Stores action output result for [Backend Call - API (GetCurrentPlayer)] action in home widget.
  ApiCallResponse? getCurrentPlayer;
  // Stores action output result for [Backend Call - API (GenerateCurrentPlayer)] action in home widget.
  ApiCallResponse? generatePlayer;
  // Stores action output result for [Backend Call - API (getPlayerScores)] action in home widget.
  ApiCallResponse? playerScores;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
