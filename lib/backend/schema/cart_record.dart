import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "service" field.
  String? _service;
  String get service => _service ?? '';
  bool hasService() => _service != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "timeslot" field.
  String? _timeslot;
  String get timeslot => _timeslot ?? '';
  bool hasTimeslot() => _timeslot != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "datetime" field.
  String? _datetime;
  String get datetime => _datetime ?? '';
  bool hasDatetime() => _datetime != null;

  // "payment" field.
  String? _payment;
  String get payment => _payment ?? '';
  bool hasPayment() => _payment != null;

  void _initializeFields() {
    _service = snapshotData['service'] as String?;
    _location = snapshotData['location'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _quantity = snapshotData['quantity'] as String?;
    _timeslot = snapshotData['timeslot'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _datetime = snapshotData['datetime'] as String?;
    _payment = snapshotData['payment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? service,
  String? location,
  DateTime? createdTime,
  String? quantity,
  String? timeslot,
  double? price,
  String? datetime,
  String? payment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'service': service,
      'location': location,
      'created_time': createdTime,
      'quantity': quantity,
      'timeslot': timeslot,
      'price': price,
      'datetime': datetime,
      'payment': payment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.service == e2?.service &&
        e1?.location == e2?.location &&
        e1?.createdTime == e2?.createdTime &&
        e1?.quantity == e2?.quantity &&
        e1?.timeslot == e2?.timeslot &&
        e1?.price == e2?.price &&
        e1?.datetime == e2?.datetime &&
        e1?.payment == e2?.payment;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.service,
        e?.location,
        e?.createdTime,
        e?.quantity,
        e?.timeslot,
        e?.price,
        e?.datetime,
        e?.payment
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
