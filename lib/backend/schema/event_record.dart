import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventRecord extends FirestoreRecord {
  EventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "E_name" field.
  String? _eName;
  String get eName => _eName ?? '';
  bool hasEName() => _eName != null;

  // "E_desc" field.
  String? _eDesc;
  String get eDesc => _eDesc ?? '';
  bool hasEDesc() => _eDesc != null;

  // "E_location" field.
  String? _eLocation;
  String get eLocation => _eLocation ?? '';
  bool hasELocation() => _eLocation != null;

  // "E_pincode" field.
  int? _ePincode;
  int get ePincode => _ePincode ?? 0;
  bool hasEPincode() => _ePincode != null;

  // "E_Start" field.
  String? _eStart;
  String get eStart => _eStart ?? '';
  bool hasEStart() => _eStart != null;

  // "E_end" field.
  String? _eEnd;
  String get eEnd => _eEnd ?? '';
  bool hasEEnd() => _eEnd != null;

  // "E_img" field.
  String? _eImg;
  String get eImg => _eImg ?? '';
  bool hasEImg() => _eImg != null;

  // "E_joined" field.
  List<DocumentReference>? _eJoined;
  List<DocumentReference> get eJoined => _eJoined ?? const [];
  bool hasEJoined() => _eJoined != null;

  // "E_other" field.
  DocumentReference? _eOther;
  DocumentReference? get eOther => _eOther;
  bool hasEOther() => _eOther != null;

  void _initializeFields() {
    _eName = snapshotData['E_name'] as String?;
    _eDesc = snapshotData['E_desc'] as String?;
    _eLocation = snapshotData['E_location'] as String?;
    _ePincode = castToType<int>(snapshotData['E_pincode']);
    _eStart = snapshotData['E_Start'] as String?;
    _eEnd = snapshotData['E_end'] as String?;
    _eImg = snapshotData['E_img'] as String?;
    _eJoined = getDataList(snapshotData['E_joined']);
    _eOther = snapshotData['E_other'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Event');

  static Stream<EventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventRecord.fromSnapshot(s));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventRecord.fromSnapshot(s));

  static EventRecord fromSnapshot(DocumentSnapshot snapshot) => EventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventRecordData({
  String? eName,
  String? eDesc,
  String? eLocation,
  int? ePincode,
  String? eStart,
  String? eEnd,
  String? eImg,
  DocumentReference? eOther,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'E_name': eName,
      'E_desc': eDesc,
      'E_location': eLocation,
      'E_pincode': ePincode,
      'E_Start': eStart,
      'E_end': eEnd,
      'E_img': eImg,
      'E_other': eOther,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventRecordDocumentEquality implements Equality<EventRecord> {
  const EventRecordDocumentEquality();

  @override
  bool equals(EventRecord? e1, EventRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eName == e2?.eName &&
        e1?.eDesc == e2?.eDesc &&
        e1?.eLocation == e2?.eLocation &&
        e1?.ePincode == e2?.ePincode &&
        e1?.eStart == e2?.eStart &&
        e1?.eEnd == e2?.eEnd &&
        e1?.eImg == e2?.eImg &&
        listEquality.equals(e1?.eJoined, e2?.eJoined) &&
        e1?.eOther == e2?.eOther;
  }

  @override
  int hash(EventRecord? e) => const ListEquality().hash([
        e?.eName,
        e?.eDesc,
        e?.eLocation,
        e?.ePincode,
        e?.eStart,
        e?.eEnd,
        e?.eImg,
        e?.eJoined,
        e?.eOther
      ]);

  @override
  bool isValidKey(Object? o) => o is EventRecord;
}
