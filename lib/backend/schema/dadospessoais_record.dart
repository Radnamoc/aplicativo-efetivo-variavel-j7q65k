import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadospessoaisRecord extends FirestoreRecord {
  DadospessoaisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "nomedamae" field.
  String? _nomedamae;
  String get nomedamae => _nomedamae ?? '';
  bool hasNomedamae() => _nomedamae != null;

  // "nomedopai" field.
  String? _nomedopai;
  String get nomedopai => _nomedopai ?? '';
  bool hasNomedopai() => _nomedopai != null;

  // "estadocivil" field.
  String? _estadocivil;
  String get estadocivil => _estadocivil ?? '';
  bool hasEstadocivil() => _estadocivil != null;

  // "telefoneparacontato" field.
  int? _telefoneparacontato;
  int get telefoneparacontato => _telefoneparacontato ?? 0;
  bool hasTelefoneparacontato() => _telefoneparacontato != null;

  // "telefonereserva" field.
  int? _telefonereserva;
  int get telefonereserva => _telefonereserva ?? 0;
  bool hasTelefonereserva() => _telefonereserva != null;

  // "tiposanguineo" field.
  String? _tiposanguineo;
  String get tiposanguineo => _tiposanguineo ?? '';
  bool hasTiposanguineo() => _tiposanguineo != null;

  // "cnh" field.
  bool? _cnh;
  bool get cnh => _cnh ?? false;
  bool hasCnh() => _cnh != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "datadenascimento" field.
  DateTime? _datadenascimento;
  DateTime? get datadenascimento => _datadenascimento;
  bool hasDatadenascimento() => _datadenascimento != null;

  // "dependentes" field.
  String? _dependentes;
  String get dependentes => _dependentes ?? '';
  bool hasDependentes() => _dependentes != null;

  // "nomecompleto" field.
  String? _nomecompleto;
  String get nomecompleto => _nomecompleto ?? '';
  bool hasNomecompleto() => _nomecompleto != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _endereco = snapshotData['endereco'] as String?;
    _nomedamae = snapshotData['nomedamae'] as String?;
    _nomedopai = snapshotData['nomedopai'] as String?;
    _estadocivil = snapshotData['estadocivil'] as String?;
    _telefoneparacontato = castToType<int>(snapshotData['telefoneparacontato']);
    _telefonereserva = castToType<int>(snapshotData['telefonereserva']);
    _tiposanguineo = snapshotData['tiposanguineo'] as String?;
    _cnh = snapshotData['cnh'] as bool?;
    _idade = castToType<int>(snapshotData['idade']);
    _datadenascimento = snapshotData['datadenascimento'] as DateTime?;
    _dependentes = snapshotData['dependentes'] as String?;
    _nomecompleto = snapshotData['nomecompleto'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dadospessoais')
          : FirebaseFirestore.instance.collectionGroup('dadospessoais');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dadospessoais').doc(id);

  static Stream<DadospessoaisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadospessoaisRecord.fromSnapshot(s));

  static Future<DadospessoaisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadospessoaisRecord.fromSnapshot(s));

  static DadospessoaisRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DadospessoaisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadospessoaisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadospessoaisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadospessoaisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadospessoaisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadospessoaisRecordData({
  String? endereco,
  String? nomedamae,
  String? nomedopai,
  String? estadocivil,
  int? telefoneparacontato,
  int? telefonereserva,
  String? tiposanguineo,
  bool? cnh,
  int? idade,
  DateTime? datadenascimento,
  String? dependentes,
  String? nomecompleto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'endereco': endereco,
      'nomedamae': nomedamae,
      'nomedopai': nomedopai,
      'estadocivil': estadocivil,
      'telefoneparacontato': telefoneparacontato,
      'telefonereserva': telefonereserva,
      'tiposanguineo': tiposanguineo,
      'cnh': cnh,
      'idade': idade,
      'datadenascimento': datadenascimento,
      'dependentes': dependentes,
      'nomecompleto': nomecompleto,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadospessoaisRecordDocumentEquality
    implements Equality<DadospessoaisRecord> {
  const DadospessoaisRecordDocumentEquality();

  @override
  bool equals(DadospessoaisRecord? e1, DadospessoaisRecord? e2) {
    return e1?.endereco == e2?.endereco &&
        e1?.nomedamae == e2?.nomedamae &&
        e1?.nomedopai == e2?.nomedopai &&
        e1?.estadocivil == e2?.estadocivil &&
        e1?.telefoneparacontato == e2?.telefoneparacontato &&
        e1?.telefonereserva == e2?.telefonereserva &&
        e1?.tiposanguineo == e2?.tiposanguineo &&
        e1?.cnh == e2?.cnh &&
        e1?.idade == e2?.idade &&
        e1?.datadenascimento == e2?.datadenascimento &&
        e1?.dependentes == e2?.dependentes &&
        e1?.nomecompleto == e2?.nomecompleto;
  }

  @override
  int hash(DadospessoaisRecord? e) => const ListEquality().hash([
        e?.endereco,
        e?.nomedamae,
        e?.nomedopai,
        e?.estadocivil,
        e?.telefoneparacontato,
        e?.telefonereserva,
        e?.tiposanguineo,
        e?.cnh,
        e?.idade,
        e?.datadenascimento,
        e?.dependentes,
        e?.nomecompleto
      ]);

  @override
  bool isValidKey(Object? o) => o is DadospessoaisRecord;
}
