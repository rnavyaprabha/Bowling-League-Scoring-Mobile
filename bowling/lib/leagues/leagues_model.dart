import '/flutter_flow/flutter_flow_util.dart';
import 'leagues_widget.dart' show LeaguesWidget;
import 'package:flutter/material.dart';

class LeaguesModel extends FlutterFlowModel<LeaguesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
