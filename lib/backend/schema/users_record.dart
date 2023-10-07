import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "you_singed" field.
  int? _youSinged;
  int get youSinged => _youSinged ?? 0;
  bool hasYouSinged() => _youSinged != null;

  // "you_created" field.
  int? _youCreated;
  int get youCreated => _youCreated ?? 0;
  bool hasYouCreated() => _youCreated != null;

  // "singned_petition" field.
  DocumentReference? _singnedPetition;
  DocumentReference? get singnedPetition => _singnedPetition;
  bool hasSingnedPetition() => _singnedPetition != null;

  // "userEJoined" field.
  DocumentReference? _userEJoined;
  DocumentReference? get userEJoined => _userEJoined;
  bool hasUserEJoined() => _userEJoined != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "MobileNo" field.
  int? _mobileNo;
  int get mobileNo => _mobileNo ?? 0;
  bool hasMobileNo() => _mobileNo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _name = snapshotData['name'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _bio = snapshotData['bio'] as String?;
    _youSinged = castToType<int>(snapshotData['you_singed']);
    _youCreated = castToType<int>(snapshotData['you_created']);
    _singnedPetition = snapshotData['singned_petition'] as DocumentReference?;
    _userEJoined = snapshotData['userEJoined'] as DocumentReference?;
    _gender = snapshotData['gender'] as String?;
    _mobileNo = castToType<int>(snapshotData['MobileNo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? name,
  String? city,
  String? state,
  String? bio,
  int? youSinged,
  int? youCreated,
  DocumentReference? singnedPetition,
  DocumentReference? userEJoined,
  String? gender,
  int? mobileNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'name': name,
      'city': city,
      'state': state,
      'bio': bio,
      'you_singed': youSinged,
      'you_created': youCreated,
      'singned_petition': singnedPetition,
      'userEJoined': userEJoined,
      'gender': gender,
      'MobileNo': mobileNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.name == e2?.name &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.bio == e2?.bio &&
        e1?.youSinged == e2?.youSinged &&
        e1?.youCreated == e2?.youCreated &&
        e1?.singnedPetition == e2?.singnedPetition &&
        e1?.userEJoined == e2?.userEJoined &&
        e1?.gender == e2?.gender &&
        e1?.mobileNo == e2?.mobileNo;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.name,
        e?.city,
        e?.state,
        e?.bio,
        e?.youSinged,
        e?.youCreated,
        e?.singnedPetition,
        e?.userEJoined,
        e?.gender,
        e?.mobileNo
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
