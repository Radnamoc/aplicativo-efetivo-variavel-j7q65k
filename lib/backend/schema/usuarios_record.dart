import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "postograd" field.
  String? _postograd;
  String get postograd => _postograd ?? '';
  bool hasPostograd() => _postograd != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "militar" field.
  bool? _militar;
  bool get militar => _militar ?? false;
  bool hasMilitar() => _militar != null;

  // "cia" field.
  String? _cia;
  String get cia => _cia ?? '';
  bool hasCia() => _cia != null;

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

  // "nomecompleto" field.
  String? _nomecompleto;
  String get nomecompleto => _nomecompleto ?? '';
  bool hasNomecompleto() => _nomecompleto != null;

  // "situacaomilitar" field.
  String? _situacaomilitar;
  String get situacaomilitar => _situacaomilitar ?? '';
  bool hasSituacaomilitar() => _situacaomilitar != null;

  void _initializeFields() {
    _senha = snapshotData['senha'] as String?;
    _postograd = snapshotData['postograd'] as String?;
    _email = snapshotData['email'] as String?;
    _militar = snapshotData['militar'] as bool?;
    _cia = snapshotData['cia'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nomecompleto = snapshotData['nomecompleto'] as String?;
    _situacaomilitar = snapshotData['situacaomilitar'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? senha,
  String? postograd,
  String? email,
  bool? militar,
  String? cia,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? nomecompleto,
  String? situacaomilitar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senha': senha,
      'postograd': postograd,
      'email': email,
      'militar': militar,
      'cia': cia,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'nomecompleto': nomecompleto,
      'situacaomilitar': situacaomilitar,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.senha == e2?.senha &&
        e1?.postograd == e2?.postograd &&
        e1?.email == e2?.email &&
        e1?.militar == e2?.militar &&
        e1?.cia == e2?.cia &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.nomecompleto == e2?.nomecompleto &&
        e1?.situacaomilitar == e2?.situacaomilitar;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.senha,
        e?.postograd,
        e?.email,
        e?.militar,
        e?.cia,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.nomecompleto,
        e?.situacaomilitar
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
