import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Authentication Group Code

class AuthenticationGroup {
  static String baseUrl =
      'https://bowling-league-scoring-api.onrender.com/bowling-league/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${AuthenticationGroup.baseUrl}/authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.jwt''',
      ));
}

/// End Authentication Group Code

/// Start User Management Group Code

class UserManagementGroup {
  static String baseUrl =
      'https://bowling-league-scoring-api.onrender.com/bowling-league/v1';
  static Map<String, String> headers = {};
  static UserRegistrationCall userRegistrationCall = UserRegistrationCall();
  static GetUserDetailsCall getUserDetailsCall = GetUserDetailsCall();
  static UpdateUserDetailsCall updateUserDetailsCall = UpdateUserDetailsCall();
  static UpdatePasswordCall updatePasswordCall = UpdatePasswordCall();
}

class UserRegistrationCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "role": "user"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserRegistration',
      apiUrl: '${UserManagementGroup.baseUrl}/public/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserDetailsCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserDetails',
      apiUrl: '${UserManagementGroup.baseUrl}/user/details',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  int? age(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.age''',
      ));
}

class UpdateUserDetailsCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
    String? firstName = '',
    String? lastName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstName": "$firstName",
  "lastName": "$lastName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateUserDetails',
      apiUrl: '${UserManagementGroup.baseUrl}/user/details',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class UpdatePasswordCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
    String? currentPassword = '',
    String? newPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "newPassword": "$newPassword",
  "currentPassword": "$currentPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePassword',
      apiUrl: '${UserManagementGroup.baseUrl}/user/change-password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End User Management Group Code

/// Start Player Group Code

class PlayerGroup {
  static String baseUrl =
      'https://bowling-league-scoring-api.onrender.com/bowling-league/v1';
  static Map<String, String> headers = {};
  static GetCurrentPlayerCall getCurrentPlayerCall = GetCurrentPlayerCall();
  static UpdatePlayerCall updatePlayerCall = UpdatePlayerCall();
  static GenerateCurrentPlayerCall generateCurrentPlayerCall =
      GenerateCurrentPlayerCall();
}

class GetCurrentPlayerCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCurrentPlayer',
      apiUrl: '${PlayerGroup.baseUrl}/api/player',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? playerId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.playerId''',
      ));
  int? average(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.average''',
      ));
  List? teams(dynamic response) => getJsonField(
        response,
        r'''$.teams''',
        true,
      ) as List?;
}

class UpdatePlayerCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
    int? average,
  }) async {
    final ffApiRequestBody = '''
{
  "average": $average
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePlayer',
      apiUrl: '${PlayerGroup.baseUrl}/api/player',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? average(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.average''',
      ));
}

class GenerateCurrentPlayerCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
    int? average,
  }) async {
    final ffApiRequestBody = '''
{
  "average": $average
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateCurrentPlayer',
      apiUrl: '${PlayerGroup.baseUrl}/api/player',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? playerId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.playerId''',
      ));
}

/// End Player Group Code

/// Start Leagues Group Code

class LeaguesGroup {
  static String baseUrl =
      'https://bowling-league-scoring-api.onrender.com/bowling-league/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static GetLeaguesCall getLeaguesCall = GetLeaguesCall();
  static GetAllLeaguesCall getAllLeaguesCall = GetAllLeaguesCall();
  static GetLeagueInfoCall getLeagueInfoCall = GetLeagueInfoCall();
  static GetLeagueStandingsCall getLeagueStandingsCall =
      GetLeagueStandingsCall();
}

class GetLeaguesCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLeagues',
      apiUrl: '${LeaguesGroup.baseUrl}/leagues/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? leagues(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetAllLeaguesCall {
  Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllLeagues',
      apiUrl: '${LeaguesGroup.baseUrl}/leagues/details',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? leagues(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetLeagueInfoCall {
  Future<ApiCallResponse> call({
    int? leagueId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLeagueInfo',
      apiUrl: '${LeaguesGroup.baseUrl}/leagues/$leagueId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? teams(dynamic response) => getJsonField(
        response,
        r'''$.teams''',
        true,
      ) as List?;
}

class GetLeagueStandingsCall {
  Future<ApiCallResponse> call({
    int? leagueId = 21,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getLeagueStandings',
      apiUrl: '${LeaguesGroup.baseUrl}/leagues/$leagueId/rankings',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? standings(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  List<int>? finalScores(dynamic response) => (getJsonField(
        response,
        r'''$[:].totalScore''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End Leagues Group Code

/// Start Games Group Code

class GamesGroup {
  static String baseUrl =
      'https://bowling-league-scoring-api.onrender.com/bowling-league/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [jwt]',
  };
  static TeamGamesCall teamGamesCall = TeamGamesCall();
  static LeagueGamesCall leagueGamesCall = LeagueGamesCall();
  static GetScoreByGameCall getScoreByGameCall = GetScoreByGameCall();
  static RegisterScoreCall registerScoreCall = RegisterScoreCall();
  static GetPlayerScoresCall getPlayerScoresCall = GetPlayerScoresCall();
  static GetTeamScoreCall getTeamScoreCall = GetTeamScoreCall();
}

class TeamGamesCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teamGames',
      apiUrl: '${GamesGroup.baseUrl}/teams/$teamId/games',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? games(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class LeagueGamesCall {
  Future<ApiCallResponse> call({
    int? leagueId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'leagueGames',
      apiUrl: '${GamesGroup.baseUrl}/leagues/$leagueId/games',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? games(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetScoreByGameCall {
  Future<ApiCallResponse> call({
    int? gameId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getScoreByGame',
      apiUrl: '${GamesGroup.baseUrl}/game/playerGameScore/game/$gameId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic games(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  List<int>? players(dynamic response) => (getJsonField(
        response,
        r'''$[:].playerId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class RegisterScoreCall {
  Future<ApiCallResponse> call({
    int? gameId,
    int? teamId,
    int? playeId,
    int? g1score,
    int? g2score,
    int? g3score,
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "gameId": $gameId,
  "teamId": $teamId,
  "playerId": $playeId,
  "g1Score": $g1score,
  "g2Score": $g2score,
  "g3Score": $g3score
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registerScore',
      apiUrl: '${GamesGroup.baseUrl}/game/registerGameScore',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlayerScoresCall {
  Future<ApiCallResponse> call({
    int? playerId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPlayerScores',
      apiUrl: '${GamesGroup.baseUrl}/game/playerGameScore/player/$playerId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? gameScores(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetTeamScoreCall {
  Future<ApiCallResponse> call({
    int? teamId,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTeamScore',
      apiUrl: '${GamesGroup.baseUrl}/game/teamGameScore/game/$teamId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Games Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
