import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class LeaguesRecord extends FirestoreRecord {
  LeaguesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leagues');

  static Stream<LeaguesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeaguesRecord.fromSnapshot(s));

  static Future<LeaguesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeaguesRecord.fromSnapshot(s));

  static LeaguesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeaguesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeaguesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeaguesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeaguesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeaguesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeaguesRecordData({
  String? name,
  DateTime? startDate,
  DateTime? endDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'startDate': startDate,
      'endDate': endDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeaguesRecordDocumentEquality implements Equality<LeaguesRecord> {
  const LeaguesRecordDocumentEquality();

  @override
  bool equals(LeaguesRecord? e1, LeaguesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate;
  }

  @override
  int hash(LeaguesRecord? e) =>
      const ListEquality().hash([e?.name, e?.startDate, e?.endDate]);

  @override
  bool isValidKey(Object? o) => o is LeaguesRecord;
}
