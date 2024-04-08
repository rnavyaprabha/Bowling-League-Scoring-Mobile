import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ChallengesRecord extends FirestoreRecord {
  ChallengesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "fromPlayer" field.
  DocumentReference? _fromPlayer;
  DocumentReference? get fromPlayer => _fromPlayer;
  bool hasFromPlayer() => _fromPlayer != null;

  // "toPlayer" field.
  DocumentReference? _toPlayer;
  DocumentReference? get toPlayer => _toPlayer;
  bool hasToPlayer() => _toPlayer != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _fromPlayer = snapshotData['fromPlayer'] as DocumentReference?;
    _toPlayer = snapshotData['toPlayer'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesRecord.fromSnapshot(s));

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengesRecord.fromSnapshot(s));

  static ChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesRecordData({
  String? status,
  DocumentReference? fromPlayer,
  DocumentReference? toPlayer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'fromPlayer': fromPlayer,
      'toPlayer': toPlayer,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesRecordDocumentEquality implements Equality<ChallengesRecord> {
  const ChallengesRecordDocumentEquality();

  @override
  bool equals(ChallengesRecord? e1, ChallengesRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.fromPlayer == e2?.fromPlayer &&
        e1?.toPlayer == e2?.toPlayer;
  }

  @override
  int hash(ChallengesRecord? e) =>
      const ListEquality().hash([e?.status, e?.fromPlayer, e?.toPlayer]);

  @override
  bool isValidKey(Object? o) => o is ChallengesRecord;
}
