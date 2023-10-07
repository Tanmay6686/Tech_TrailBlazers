import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetitionRecord extends FirestoreRecord {
  PetitionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Other_user" field.
  DocumentReference? _otherUser;
  DocumentReference? get otherUser => _otherUser;
  bool hasOtherUser() => _otherUser != null;

  // "Petition_title" field.
  String? _petitionTitle;
  String get petitionTitle => _petitionTitle ?? '';
  bool hasPetitionTitle() => _petitionTitle != null;

  // "petition_img" field.
  String? _petitionImg;
  String get petitionImg => _petitionImg ?? '';
  bool hasPetitionImg() => _petitionImg != null;

  // "petition_desc" field.
  String? _petitionDesc;
  String get petitionDesc => _petitionDesc ?? '';
  bool hasPetitionDesc() => _petitionDesc != null;

  // "petition_caption" field.
  String? _petitionCaption;
  String get petitionCaption => _petitionCaption ?? '';
  bool hasPetitionCaption() => _petitionCaption != null;

  // "petition_hash" field.
  List<String>? _petitionHash;
  List<String> get petitionHash => _petitionHash ?? const [];
  bool hasPetitionHash() => _petitionHash != null;

  // "counter" field.
  int? _counter;
  int get counter => _counter ?? 0;
  bool hasCounter() => _counter != null;

  // "listcounter" field.
  List<DocumentReference>? _listcounter;
  List<DocumentReference> get listcounter => _listcounter ?? const [];
  bool hasListcounter() => _listcounter != null;

  // "Hole" field.
  String? _hole;
  String get hole => _hole ?? '';
  bool hasHole() => _hole != null;

  void _initializeFields() {
    _otherUser = snapshotData['Other_user'] as DocumentReference?;
    _petitionTitle = snapshotData['Petition_title'] as String?;
    _petitionImg = snapshotData['petition_img'] as String?;
    _petitionDesc = snapshotData['petition_desc'] as String?;
    _petitionCaption = snapshotData['petition_caption'] as String?;
    _petitionHash = getDataList(snapshotData['petition_hash']);
    _counter = castToType<int>(snapshotData['counter']);
    _listcounter = getDataList(snapshotData['listcounter']);
    _hole = snapshotData['Hole'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Petition');

  static Stream<PetitionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetitionRecord.fromSnapshot(s));

  static Future<PetitionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetitionRecord.fromSnapshot(s));

  static PetitionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PetitionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetitionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetitionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetitionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetitionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetitionRecordData({
  DocumentReference? otherUser,
  String? petitionTitle,
  String? petitionImg,
  String? petitionDesc,
  String? petitionCaption,
  int? counter,
  String? hole,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Other_user': otherUser,
      'Petition_title': petitionTitle,
      'petition_img': petitionImg,
      'petition_desc': petitionDesc,
      'petition_caption': petitionCaption,
      'counter': counter,
      'Hole': hole,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetitionRecordDocumentEquality implements Equality<PetitionRecord> {
  const PetitionRecordDocumentEquality();

  @override
  bool equals(PetitionRecord? e1, PetitionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.otherUser == e2?.otherUser &&
        e1?.petitionTitle == e2?.petitionTitle &&
        e1?.petitionImg == e2?.petitionImg &&
        e1?.petitionDesc == e2?.petitionDesc &&
        e1?.petitionCaption == e2?.petitionCaption &&
        listEquality.equals(e1?.petitionHash, e2?.petitionHash) &&
        e1?.counter == e2?.counter &&
        listEquality.equals(e1?.listcounter, e2?.listcounter) &&
        e1?.hole == e2?.hole;
  }

  @override
  int hash(PetitionRecord? e) => const ListEquality().hash([
        e?.otherUser,
        e?.petitionTitle,
        e?.petitionImg,
        e?.petitionDesc,
        e?.petitionCaption,
        e?.petitionHash,
        e?.counter,
        e?.listcounter,
        e?.hole
      ]);

  @override
  bool isValidKey(Object? o) => o is PetitionRecord;
}
