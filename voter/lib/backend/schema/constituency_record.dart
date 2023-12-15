import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'constituency_record.g.dart';

abstract class ConstituencyRecord
    implements Built<ConstituencyRecord, ConstituencyRecordBuilder> {
  static Serializer<ConstituencyRecord> get serializer =>
      _$constituencyRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConstituencyRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('constituency');

  static Stream<ConstituencyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConstituencyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConstituencyRecord._();
  factory ConstituencyRecord(
          [void Function(ConstituencyRecordBuilder) updates]) =
      _$ConstituencyRecord;

  static ConstituencyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConstituencyRecordData({
  String? name,
  DateTime? createdTime,
}) {
  final firestoreData = serializers.toFirestore(
    ConstituencyRecord.serializer,
    ConstituencyRecord(
      (c) => c
        ..name = name
        ..createdTime = createdTime,
    ),
  );

  return firestoreData;
}
