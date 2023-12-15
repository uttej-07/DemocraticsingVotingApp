import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'votes_record.g.dart';

abstract class VotesRecord implements Built<VotesRecord, VotesRecordBuilder> {
  static Serializer<VotesRecord> get serializer => _$votesRecordSerializer;

  String? get voter;

  String? get candidate;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get election;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VotesRecordBuilder builder) => builder
    ..voter = ''
    ..candidate = ''
    ..election = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('votes');

  static Stream<VotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VotesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VotesRecord._();
  factory VotesRecord([void Function(VotesRecordBuilder) updates]) =
      _$VotesRecord;

  static VotesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVotesRecordData({
  String? voter,
  String? candidate,
  DateTime? createdTime,
  String? election,
}) {
  final firestoreData = serializers.toFirestore(
    VotesRecord.serializer,
    VotesRecord(
      (v) => v
        ..voter = voter
        ..candidate = candidate
        ..createdTime = createdTime
        ..election = election,
    ),
  );

  return firestoreData;
}
