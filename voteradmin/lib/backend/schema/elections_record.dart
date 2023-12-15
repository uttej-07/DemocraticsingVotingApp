import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'elections_record.g.dart';

abstract class ElectionsRecord
    implements Built<ElectionsRecord, ElectionsRecordBuilder> {
  static Serializer<ElectionsRecord> get serializer =>
      _$electionsRecordSerializer;

  String? get electionname;

  String? get candidate;

  String? get constituency;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  int? get votes;

  String? get fromdate;

  String? get todate;

  String? get totalcandidates;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ElectionsRecordBuilder builder) => builder
    ..electionname = ''
    ..candidate = ''
    ..constituency = ''
    ..votes = 0
    ..fromdate = ''
    ..todate = ''
    ..totalcandidates = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('elections');

  static Stream<ElectionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ElectionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ElectionsRecord._();
  factory ElectionsRecord([void Function(ElectionsRecordBuilder) updates]) =
      _$ElectionsRecord;

  static ElectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createElectionsRecordData({
  String? electionname,
  String? candidate,
  String? constituency,
  DateTime? createdTime,
  int? votes,
  String? fromdate,
  String? todate,
  String? totalcandidates,
}) {
  final firestoreData = serializers.toFirestore(
    ElectionsRecord.serializer,
    ElectionsRecord(
      (e) => e
        ..electionname = electionname
        ..candidate = candidate
        ..constituency = constituency
        ..createdTime = createdTime
        ..votes = votes
        ..fromdate = fromdate
        ..todate = todate
        ..totalcandidates = totalcandidates,
    ),
  );

  return firestoreData;
}
