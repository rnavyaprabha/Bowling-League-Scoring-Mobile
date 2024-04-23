import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BowlingAuthUser {
  BowlingAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsersStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BowlingAuthUser> bowlingAuthUserSubject =
    BehaviorSubject.seeded(BowlingAuthUser(loggedIn: false));
Stream<BowlingAuthUser> bowlingAuthUserStream() => bowlingAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
