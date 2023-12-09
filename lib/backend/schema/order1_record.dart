import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Order1Record extends FirestoreRecord {
  Order1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "driverposition" field.
  String? _driverposition;
  String get driverposition => _driverposition ?? '';
  bool hasDriverposition() => _driverposition != null;

  // "distanceleft" field.
  String? _distanceleft;
  String get distanceleft => _distanceleft ?? '';
  bool hasDistanceleft() => _distanceleft != null;

  // "timeleft" field.
  String? _timeleft;
  String get timeleft => _timeleft ?? '';
  bool hasTimeleft() => _timeleft != null;

  void _initializeFields() {
    _destination = snapshotData['destination'] as String?;
    _location = snapshotData['location'] as String?;
    _driverposition = snapshotData['driverposition'] as String?;
    _distanceleft = snapshotData['distanceleft'] as String?;
    _timeleft = snapshotData['timeleft'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order1');

  static Stream<Order1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Order1Record.fromSnapshot(s));

  static Future<Order1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Order1Record.fromSnapshot(s));

  static Order1Record fromSnapshot(DocumentSnapshot snapshot) => Order1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Order1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Order1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Order1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Order1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrder1RecordData({
  String? destination,
  String? location,
  String? driverposition,
  String? distanceleft,
  String? timeleft,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'destination': destination,
      'location': location,
      'driverposition': driverposition,
      'distanceleft': distanceleft,
      'timeleft': timeleft,
    }.withoutNulls,
  );

  return firestoreData;
}

class Order1RecordDocumentEquality implements Equality<Order1Record> {
  const Order1RecordDocumentEquality();

  @override
  bool equals(Order1Record? e1, Order1Record? e2) {
    return e1?.destination == e2?.destination &&
        e1?.location == e2?.location &&
        e1?.driverposition == e2?.driverposition &&
        e1?.distanceleft == e2?.distanceleft &&
        e1?.timeleft == e2?.timeleft;
  }

  @override
  int hash(Order1Record? e) => const ListEquality().hash([
        e?.destination,
        e?.location,
        e?.driverposition,
        e?.distanceleft,
        e?.timeleft
      ]);

  @override
  bool isValidKey(Object? o) => o is Order1Record;
}
