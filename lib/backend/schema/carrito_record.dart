import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _producto = snapshotData['producto'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? producto,
  int? cantidad,
  double? subtotal,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'producto': producto,
      'cantidad': cantidad,
      'subtotal': subtotal,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.subtotal == e2?.subtotal &&
        e1?.user == e2?.user;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality()
      .hash([e?.producto, e?.cantidad, e?.subtotal, e?.user]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
