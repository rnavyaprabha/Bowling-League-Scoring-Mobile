// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaguesStruct extends BaseStruct {
  LeaguesStruct({
    int? leagueId,
    String? leagueName,
    String? leagueDescription,
    DateTime? leagueStartDate,
    DateTime? leagueEndTime,
    List<TeamsStruct>? teams,
  })  : _leagueId = leagueId,
        _leagueName = leagueName,
        _leagueDescription = leagueDescription,
        _leagueStartDate = leagueStartDate,
        _leagueEndTime = leagueEndTime,
        _teams = teams;

  // "leagueId" field.
  int? _leagueId;
  int get leagueId => _leagueId ?? 0;
  set leagueId(int? val) => _leagueId = val;
  void incrementLeagueId(int amount) => _leagueId = leagueId + amount;
  bool hasLeagueId() => _leagueId != null;

  // "leagueName" field.
  String? _leagueName;
  String get leagueName => _leagueName ?? '';
  set leagueName(String? val) => _leagueName = val;
  bool hasLeagueName() => _leagueName != null;

  // "leagueDescription" field.
  String? _leagueDescription;
  String get leagueDescription => _leagueDescription ?? '';
  set leagueDescription(String? val) => _leagueDescription = val;
  bool hasLeagueDescription() => _leagueDescription != null;

  // "leagueStartDate" field.
  DateTime? _leagueStartDate;
  DateTime? get leagueStartDate => _leagueStartDate;
  set leagueStartDate(DateTime? val) => _leagueStartDate = val;
  bool hasLeagueStartDate() => _leagueStartDate != null;

  // "leagueEndTime" field.
  DateTime? _leagueEndTime;
  DateTime? get leagueEndTime => _leagueEndTime;
  set leagueEndTime(DateTime? val) => _leagueEndTime = val;
  bool hasLeagueEndTime() => _leagueEndTime != null;

  // "teams" field.
  List<TeamsStruct>? _teams;
  List<TeamsStruct> get teams => _teams ?? const [];
  set teams(List<TeamsStruct>? val) => _teams = val;
  void updateTeams(Function(List<TeamsStruct>) updateFn) =>
      updateFn(_teams ??= []);
  bool hasTeams() => _teams != null;

  static LeaguesStruct fromMap(Map<String, dynamic> data) => LeaguesStruct(
        leagueId: castToType<int>(data['leagueId']),
        leagueName: data['leagueName'] as String?,
        leagueDescription: data['leagueDescription'] as String?,
        leagueStartDate: data['leagueStartDate'] as DateTime?,
        leagueEndTime: data['leagueEndTime'] as DateTime?,
        teams: getStructList(
          data['teams'],
          TeamsStruct.fromMap,
        ),
      );

  static LeaguesStruct? maybeFromMap(dynamic data) =>
      data is Map ? LeaguesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'leagueId': _leagueId,
        'leagueName': _leagueName,
        'leagueDescription': _leagueDescription,
        'leagueStartDate': _leagueStartDate,
        'leagueEndTime': _leagueEndTime,
        'teams': _teams?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leagueId': serializeParam(
          _leagueId,
          ParamType.int,
        ),
        'leagueName': serializeParam(
          _leagueName,
          ParamType.String,
        ),
        'leagueDescription': serializeParam(
          _leagueDescription,
          ParamType.String,
        ),
        'leagueStartDate': serializeParam(
          _leagueStartDate,
          ParamType.DateTime,
        ),
        'leagueEndTime': serializeParam(
          _leagueEndTime,
          ParamType.DateTime,
        ),
        'teams': serializeParam(
          _teams,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static LeaguesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaguesStruct(
        leagueId: deserializeParam(
          data['leagueId'],
          ParamType.int,
          false,
        ),
        leagueName: deserializeParam(
          data['leagueName'],
          ParamType.String,
          false,
        ),
        leagueDescription: deserializeParam(
          data['leagueDescription'],
          ParamType.String,
          false,
        ),
        leagueStartDate: deserializeParam(
          data['leagueStartDate'],
          ParamType.DateTime,
          false,
        ),
        leagueEndTime: deserializeParam(
          data['leagueEndTime'],
          ParamType.DateTime,
          false,
        ),
        teams: deserializeStructParam<TeamsStruct>(
          data['teams'],
          ParamType.DataStruct,
          true,
          structBuilder: TeamsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LeaguesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LeaguesStruct &&
        leagueId == other.leagueId &&
        leagueName == other.leagueName &&
        leagueDescription == other.leagueDescription &&
        leagueStartDate == other.leagueStartDate &&
        leagueEndTime == other.leagueEndTime &&
        listEquality.equals(teams, other.teams);
  }

  @override
  int get hashCode => const ListEquality().hash([
        leagueId,
        leagueName,
        leagueDescription,
        leagueStartDate,
        leagueEndTime,
        teams
      ]);
}

LeaguesStruct createLeaguesStruct({
  int? leagueId,
  String? leagueName,
  String? leagueDescription,
  DateTime? leagueStartDate,
  DateTime? leagueEndTime,
}) =>
    LeaguesStruct(
      leagueId: leagueId,
      leagueName: leagueName,
      leagueDescription: leagueDescription,
      leagueStartDate: leagueStartDate,
      leagueEndTime: leagueEndTime,
    );
