import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdministradorRecord extends FirestoreRecord {
  AdministradorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cmt" field.
  bool? _cmt;
  bool get cmt => _cmt ?? false;
  bool hasCmt() => _cmt != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  void _initializeFields() {
    _cmt = snapshotData['cmt'] as bool?;
    _nome = snapshotData['nome'] as String?;
    _foto = snapshotData['foto'] as String?;
    _email = snapshotData['email'] as String?;
    _senha = snapshotData['senha'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Administrador');

  static Stream<AdministradorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdministradorRecord.fromSnapshot(s));

  static Future<AdministradorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdministradorRecord.fromSnapshot(s));

  static AdministradorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdministradorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdministradorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdministradorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdministradorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdministradorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdministradorRecordData({
  bool? cmt,
  String? nome,
  String? foto,
  String? email,
  String? senha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cmt': cmt,
      'nome': nome,
      'foto': foto,
      'email': email,
      'senha': senha,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdministradorRecordDocumentEquality
    implements Equality<AdministradorRecord> {
  const AdministradorRecordDocumentEquality();

  @override
  bool equals(AdministradorRecord? e1, AdministradorRecord? e2) {
    return e1?.cmt == e2?.cmt &&
        e1?.nome == e2?.nome &&
        e1?.foto == e2?.foto &&
        e1?.email == e2?.email &&
        e1?.senha == e2?.senha;
  }

  @override
  int hash(AdministradorRecord? e) =>
      const ListEquality().hash([e?.cmt, e?.nome, e?.foto, e?.email, e?.senha]);

  @override
  bool isValidKey(Object? o) => o is AdministradorRecord;
}
