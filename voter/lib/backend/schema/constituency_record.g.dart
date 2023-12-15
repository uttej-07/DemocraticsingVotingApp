// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constituency_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConstituencyRecord> _$constituencyRecordSerializer =
    new _$ConstituencyRecordSerializer();

class _$ConstituencyRecordSerializer
    implements StructuredSerializer<ConstituencyRecord> {
  @override
  final Iterable<Type> types = const [ConstituencyRecord, _$ConstituencyRecord];
  @override
  final String wireName = 'ConstituencyRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConstituencyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ConstituencyRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConstituencyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConstituencyRecord extends ConstituencyRecord {
  @override
  final String? name;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConstituencyRecord(
          [void Function(ConstituencyRecordBuilder)? updates]) =>
      (new ConstituencyRecordBuilder()..update(updates))._build();

  _$ConstituencyRecord._({this.name, this.createdTime, this.ffRef}) : super._();

  @override
  ConstituencyRecord rebuild(
          void Function(ConstituencyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstituencyRecordBuilder toBuilder() =>
      new ConstituencyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstituencyRecord &&
        name == other.name &&
        createdTime == other.createdTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), createdTime.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConstituencyRecord')
          ..add('name', name)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConstituencyRecordBuilder
    implements Builder<ConstituencyRecord, ConstituencyRecordBuilder> {
  _$ConstituencyRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConstituencyRecordBuilder() {
    ConstituencyRecord._initializeBuilder(this);
  }

  ConstituencyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstituencyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstituencyRecord;
  }

  @override
  void update(void Function(ConstituencyRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstituencyRecord build() => _build();

  _$ConstituencyRecord _build() {
    final _$result = _$v ??
        new _$ConstituencyRecord._(
            name: name, createdTime: createdTime, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
