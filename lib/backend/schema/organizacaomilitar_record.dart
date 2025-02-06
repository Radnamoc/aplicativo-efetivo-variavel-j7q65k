import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizacaomilitarRecord extends FirestoreRecord {
  OrganizacaomilitarRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "nomedobatalhao" field.
  String? _nomedobatalhao;
  String get nomedobatalhao => _nomedobatalhao ?? '';
  bool hasNomedobatalhao() => _nomedobatalhao != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _senha = snapshotData['senha'] as String?;
    _nomedobatalhao = snapshotData['nomedobatalhao'] as String?;
    _foto = snapshotData['foto'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Organizacaomilitar');

  static Stream<OrganizacaomilitarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizacaomilitarRecord.fromSnapshot(s));

  static Future<OrganizacaomilitarRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OrganizacaomilitarRecord.fromSnapshot(s));

  static OrganizacaomilitarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizacaomilitarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizacaomilitarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizacaomilitarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizacaomilitarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizacaomilitarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizacaomilitarRecordData({
  String? email,
  String? senha,
  String? nomedobatalhao,
  String? foto,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'senha': senha,
      'nomedobatalhao': nomedobatalhao,
      'foto': foto,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrganizacaomilitarRecordDocumentEquality
    implements Equality<OrganizacaomilitarRecord> {
  const OrganizacaomilitarRecordDocumentEquality();

  @override
  bool equals(OrganizacaomilitarRecord? e1, OrganizacaomilitarRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.senha == e2?.senha &&
        e1?.nomedobatalhao == e2?.nomedobatalhao &&
        e1?.foto == e2?.foto &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(OrganizacaomilitarRecord? e) => const ListEquality().hash([
        e?.email,
        e?.senha,
        e?.nomedobatalhao,
        e?.foto,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizacaomilitarRecord;
}
