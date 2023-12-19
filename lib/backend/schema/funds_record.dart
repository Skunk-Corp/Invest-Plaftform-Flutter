import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FundsRecord extends FirestoreRecord {
  FundsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "target" field.
  double? _target;
  double get target => _target ?? 0.0;
  bool hasTarget() => _target != null;

  // "raisedMoney" field.
  double? _raisedMoney;
  double get raisedMoney => _raisedMoney ?? 0.0;
  bool hasRaisedMoney() => _raisedMoney != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "risk" field.
  String? _risk;
  String get risk => _risk ?? '';
  bool hasRisk() => _risk != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "requirements" field.
  String? _requirements;
  String get requirements => _requirements ?? '';
  bool hasRequirements() => _requirements != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "lastModified" field.
  DateTime? _lastModified;
  DateTime? get lastModified => _lastModified;
  bool hasLastModified() => _lastModified != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _target = castToType<double>(snapshotData['target']);
    _raisedMoney = castToType<double>(snapshotData['raisedMoney']);
    _currency = snapshotData['currency'] as String?;
    _type = snapshotData['type'] as String?;
    _risk = snapshotData['risk'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _requirements = snapshotData['requirements'] as String?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
    _lastModified = snapshotData['lastModified'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('funds');

  static Stream<FundsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FundsRecord.fromSnapshot(s));

  static Future<FundsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FundsRecord.fromSnapshot(s));

  static FundsRecord fromSnapshot(DocumentSnapshot snapshot) => FundsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FundsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FundsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FundsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FundsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFundsRecordData({
  String? name,
  double? target,
  double? raisedMoney,
  String? currency,
  String? type,
  String? risk,
  DocumentReference? owner,
  String? requirements,
  DateTime? dateCreated,
  DateTime? dueDate,
  int? duration,
  DateTime? lastModified,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'target': target,
      'raisedMoney': raisedMoney,
      'currency': currency,
      'type': type,
      'risk': risk,
      'owner': owner,
      'requirements': requirements,
      'dateCreated': dateCreated,
      'dueDate': dueDate,
      'duration': duration,
      'lastModified': lastModified,
    }.withoutNulls,
  );

  return firestoreData;
}

class FundsRecordDocumentEquality implements Equality<FundsRecord> {
  const FundsRecordDocumentEquality();

  @override
  bool equals(FundsRecord? e1, FundsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.target == e2?.target &&
        e1?.raisedMoney == e2?.raisedMoney &&
        e1?.currency == e2?.currency &&
        e1?.type == e2?.type &&
        e1?.risk == e2?.risk &&
        e1?.owner == e2?.owner &&
        e1?.requirements == e2?.requirements &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.dueDate == e2?.dueDate &&
        e1?.duration == e2?.duration &&
        e1?.lastModified == e2?.lastModified;
  }

  @override
  int hash(FundsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.target,
        e?.raisedMoney,
        e?.currency,
        e?.type,
        e?.risk,
        e?.owner,
        e?.requirements,
        e?.dateCreated,
        e?.dueDate,
        e?.duration,
        e?.lastModified
      ]);

  @override
  bool isValidKey(Object? o) => o is FundsRecord;
}
