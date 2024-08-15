import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "stock" field.
  bool? _stock;
  bool get stock => _stock ?? false;
  bool hasStock() => _stock != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "es_favorito" field.
  bool? _esFavorito;
  bool get esFavorito => _esFavorito ?? false;
  bool hasEsFavorito() => _esFavorito != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _stock = snapshotData['stock'] as bool?;
    _categoria = snapshotData['categoria'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _esFavorito = snapshotData['es_favorito'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? name,
  String? description,
  bool? stock,
  String? categoria,
  String? imagen,
  int? precio,
  bool? esFavorito,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'stock': stock,
      'categoria': categoria,
      'Imagen': imagen,
      'precio': precio,
      'es_favorito': esFavorito,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.stock == e2?.stock &&
        e1?.categoria == e2?.categoria &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio &&
        e1?.esFavorito == e2?.esFavorito;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.stock,
        e?.categoria,
        e?.imagen,
        e?.precio,
        e?.esFavorito
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
