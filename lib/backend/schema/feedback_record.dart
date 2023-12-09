import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "cancelreason" field.
  String? _cancelreason;
  String get cancelreason => _cancelreason ?? '';
  bool hasCancelreason() => _cancelreason != null;

  void _initializeFields() {
    _rating = castToType<double>(snapshotData['rating']);
    _feedback = snapshotData['feedback'] as String?;
    _cancelreason = snapshotData['cancelreason'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  double? rating,
  String? feedback,
  String? cancelreason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rating': rating,
      'feedback': feedback,
      'cancelreason': cancelreason,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.rating == e2?.rating &&
        e1?.feedback == e2?.feedback &&
        e1?.cancelreason == e2?.cancelreason;
  }

  @override
  int hash(FeedbackRecord? e) =>
      const ListEquality().hash([e?.rating, e?.feedback, e?.cancelreason]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
