import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Dadospessoais01Record extends FirestoreRecord {
  Dadospessoais01Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _endereco = snapshotData['endereco'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dadospessoais01')
          : FirebaseFirestore.instance.collectionGroup('dadospessoais01');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dadospessoais01').doc(id);

  static Stream<Dadospessoais01Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Dadospessoais01Record.fromSnapshot(s));

  static Future<Dadospessoais01Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Dadospessoais01Record.fromSnapshot(s));

  static Dadospessoais01Record fromSnapshot(DocumentSnapshot snapshot) =>
      Dadospessoais01Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Dadospessoais01Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Dadospessoais01Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Dadospessoais01Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Dadospessoais01Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadospessoais01RecordData({
  String? endereco,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'endereco': endereco,
    }.withoutNulls,
  );

  return firestoreData;
}

class Dadospessoais01RecordDocumentEquality
    implements Equality<Dadospessoais01Record> {
  const Dadospessoais01RecordDocumentEquality();

  @override
  bool equals(Dadospessoais01Record? e1, Dadospessoais01Record? e2) {
    return e1?.endereco == e2?.endereco;
  }

  @override
  int hash(Dadospessoais01Record? e) =>
      const ListEquality().hash([e?.endereco]);

  @override
  bool isValidKey(Object? o) => o is Dadospessoais01Record;
}
