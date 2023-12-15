import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'candidates_record.g.dart';

abstract class CandidatesRecord
    implements Built<CandidatesRecord, CandidatesRecordBuilder> {
  static Serializer<CandidatesRecord> get serializer =>
      _$candidatesRecordSerializer;

  String? get name;

  String? get constituency;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  int? get votes;

  String? get partyname;

  String? get election;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CandidatesRecordBuilder builder) => builder
    ..name = ''
    ..constituency = ''
    ..votes = 0
    ..partyname = ''
    ..election = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidates');

  static Stream<CandidatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CandidatesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CandidatesRecord._();
  factory CandidatesRecord([void Function(CandidatesRecordBuilder) updates]) =
      _$CandidatesRecord;

  static CandidatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCandidatesRecordData({
  String? name,
  String? constituency,
  DateTime? createdTime,
  int? votes,
  String? partyname,
  String? election,
}) {
  final firestoreData = serializers.toFirestore(
    CandidatesRecord.serializer,
    CandidatesRecord(
      (c) => c
        ..name = name
        ..constituency = constituency
        ..createdTime = createdTime
        ..votes = votes
        ..partyname = partyname
        ..election = election,
    ),
  );

  return firestoreData;
}
