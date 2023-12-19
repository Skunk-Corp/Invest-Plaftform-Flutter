import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "oldValue" field.
  String? _oldValue;
  String get oldValue => _oldValue ?? '';
  bool hasOldValue() => _oldValue != null;

  // "newValue" field.
  String? _newValue;
  String get newValue => _newValue ?? '';
  bool hasNewValue() => _newValue != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _oldValue = snapshotData['oldValue'] as String?;
    _newValue = snapshotData['newValue'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('history')
          : FirebaseFirestore.instance.collectionGroup('history');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('history').doc();

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryRecordData({
  DateTime? date,
  String? type,
  String? oldValue,
  String? newValue,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'type': type,
      'oldValue': oldValue,
      'newValue': newValue,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.type == e2?.type &&
        e1?.oldValue == e2?.oldValue &&
        e1?.newValue == e2?.newValue &&
        e1?.user == e2?.user;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality()
      .hash([e?.date, e?.type, e?.oldValue, e?.newValue, e?.user]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}
