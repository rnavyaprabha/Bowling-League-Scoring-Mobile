// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? userId,
    String? firstName,
    String? lastName,
    int? average,
    String? email,
    int? playerId,
    int? age,
  })  : _userId = userId,
        _firstName = firstName,
        _lastName = lastName,
        _average = average,
        _email = email,
        _playerId = playerId,
        _age = age;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "average" field.
  int? _average;
  int get average => _average ?? 0;
  set average(int? val) => _average = val;
  void incrementAverage(int amount) => _average = average + amount;
  bool hasAverage() => _average != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "playerId" field.
  int? _playerId;
  int get playerId => _playerId ?? 0;
  set playerId(int? val) => _playerId = val;
  void incrementPlayerId(int amount) => _playerId = playerId + amount;
  bool hasPlayerId() => _playerId != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  set age(int? val) => _age = val;
  void incrementAge(int amount) => _age = age + amount;
  bool hasAge() => _age != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        userId: castToType<int>(data['userId']),
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        average: castToType<int>(data['average']),
        email: data['email'] as String?,
        playerId: castToType<int>(data['playerId']),
        age: castToType<int>(data['age']),
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'firstName': _firstName,
        'lastName': _lastName,
        'average': _average,
        'email': _email,
        'playerId': _playerId,
        'age': _age,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'average': serializeParam(
          _average,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'playerId': serializeParam(
          _playerId,
          ParamType.int,
        ),
        'age': serializeParam(
          _age,
          ParamType.int,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        average: deserializeParam(
          data['average'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        playerId: deserializeParam(
          data['playerId'],
          ParamType.int,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        average == other.average &&
        email == other.email &&
        playerId == other.playerId &&
        age == other.age;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, firstName, lastName, average, email, playerId, age]);
}

UsersStruct createUsersStruct({
  int? userId,
  String? firstName,
  String? lastName,
  int? average,
  String? email,
  int? playerId,
  int? age,
}) =>
    UsersStruct(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      average: average,
      email: email,
      playerId: playerId,
      age: age,
    );
