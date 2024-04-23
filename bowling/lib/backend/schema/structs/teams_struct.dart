// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsStruct extends BaseStruct {
  TeamsStruct({
    int? teamId,
    String? teamName,
    UsersStruct? player1,
    UsersStruct? player2,
    int? leagueId,
  })  : _teamId = teamId,
        _teamName = teamName,
        _player1 = player1,
        _player2 = player2,
        _leagueId = leagueId;

  // "teamId" field.
  int? _teamId;
  int get teamId => _teamId ?? 0;
  set teamId(int? val) => _teamId = val;
  void incrementTeamId(int amount) => _teamId = teamId + amount;
  bool hasTeamId() => _teamId != null;

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  set teamName(String? val) => _teamName = val;
  bool hasTeamName() => _teamName != null;

  // "player1" field.
  UsersStruct? _player1;
  UsersStruct get player1 => _player1 ?? UsersStruct();
  set player1(UsersStruct? val) => _player1 = val;
  void updatePlayer1(Function(UsersStruct) updateFn) =>
      updateFn(_player1 ??= UsersStruct());
  bool hasPlayer1() => _player1 != null;

  // "player2" field.
  UsersStruct? _player2;
  UsersStruct get player2 => _player2 ?? UsersStruct();
  set player2(UsersStruct? val) => _player2 = val;
  void updatePlayer2(Function(UsersStruct) updateFn) =>
      updateFn(_player2 ??= UsersStruct());
  bool hasPlayer2() => _player2 != null;

  // "leagueId" field.
  int? _leagueId;
  int get leagueId => _leagueId ?? 0;
  set leagueId(int? val) => _leagueId = val;
  void incrementLeagueId(int amount) => _leagueId = leagueId + amount;
  bool hasLeagueId() => _leagueId != null;

  static TeamsStruct fromMap(Map<String, dynamic> data) => TeamsStruct(
        teamId: castToType<int>(data['teamId']),
        teamName: data['teamName'] as String?,
        player1: UsersStruct.maybeFromMap(data['player1']),
        player2: UsersStruct.maybeFromMap(data['player2']),
        leagueId: castToType<int>(data['leagueId']),
      );

  static TeamsStruct? maybeFromMap(dynamic data) =>
      data is Map ? TeamsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'teamId': _teamId,
        'teamName': _teamName,
        'player1': _player1?.toMap(),
        'player2': _player2?.toMap(),
        'leagueId': _leagueId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'teamId': serializeParam(
          _teamId,
          ParamType.int,
        ),
        'teamName': serializeParam(
          _teamName,
          ParamType.String,
        ),
        'player1': serializeParam(
          _player1,
          ParamType.DataStruct,
        ),
        'player2': serializeParam(
          _player2,
          ParamType.DataStruct,
        ),
        'leagueId': serializeParam(
          _leagueId,
          ParamType.int,
        ),
      }.withoutNulls;

  static TeamsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamsStruct(
        teamId: deserializeParam(
          data['teamId'],
          ParamType.int,
          false,
        ),
        teamName: deserializeParam(
          data['teamName'],
          ParamType.String,
          false,
        ),
        player1: deserializeStructParam(
          data['player1'],
          ParamType.DataStruct,
          false,
          structBuilder: UsersStruct.fromSerializableMap,
        ),
        player2: deserializeStructParam(
          data['player2'],
          ParamType.DataStruct,
          false,
          structBuilder: UsersStruct.fromSerializableMap,
        ),
        leagueId: deserializeParam(
          data['leagueId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TeamsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamsStruct &&
        teamId == other.teamId &&
        teamName == other.teamName &&
        player1 == other.player1 &&
        player2 == other.player2 &&
        leagueId == other.leagueId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([teamId, teamName, player1, player2, leagueId]);
}

TeamsStruct createTeamsStruct({
  int? teamId,
  String? teamName,
  UsersStruct? player1,
  UsersStruct? player2,
  int? leagueId,
}) =>
    TeamsStruct(
      teamId: teamId,
      teamName: teamName,
      player1: player1 ?? UsersStruct(),
      player2: player2 ?? UsersStruct(),
      leagueId: leagueId,
    );
