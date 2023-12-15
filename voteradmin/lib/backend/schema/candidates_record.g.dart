// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CandidatesRecord> _$candidatesRecordSerializer =
    new _$CandidatesRecordSerializer();

class _$CandidatesRecordSerializer
    implements StructuredSerializer<CandidatesRecord> {
  @override
  final Iterable<Type> types = const [CandidatesRecord, _$CandidatesRecord];
  @override
  final String wireName = 'CandidatesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CandidatesRecord object,
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
    value = object.constituency;
    if (value != null) {
      result
        ..add('constituency')
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
    value = object.votes;
    if (value != null) {
      result
        ..add('votes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.partyname;
    if (value != null) {
      result
        ..add('partyname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.election;
    if (value != null) {
      result
        ..add('election')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CandidatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CandidatesRecordBuilder();

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
        case 'constituency':
          result.constituency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'partyname':
          result.partyname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'election':
          result.election = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CandidatesRecord extends CandidatesRecord {
  @override
  final String? name;
  @override
  final String? constituency;
  @override
  final DateTime? createdTime;
  @override
  final int? votes;
  @override
  final String? partyname;
  @override
  final String? election;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CandidatesRecord(
          [void Function(CandidatesRecordBuilder)? updates]) =>
      (new CandidatesRecordBuilder()..update(updates))._build();

  _$CandidatesRecord._(
      {this.name,
      this.constituency,
      this.createdTime,
      this.votes,
      this.partyname,
      this.election,
      this.ffRef})
      : super._();

  @override
  CandidatesRecord rebuild(void Function(CandidatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CandidatesRecordBuilder toBuilder() =>
      new CandidatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CandidatesRecord &&
        name == other.name &&
        constituency == other.constituency &&
        createdTime == other.createdTime &&
        votes == other.votes &&
        partyname == other.partyname &&
        election == other.election &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), constituency.hashCode),
                        createdTime.hashCode),
                    votes.hashCode),
                partyname.hashCode),
            election.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CandidatesRecord')
          ..add('name', name)
          ..add('constituency', constituency)
          ..add('createdTime', createdTime)
          ..add('votes', votes)
          ..add('partyname', partyname)
          ..add('election', election)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CandidatesRecordBuilder
    implements Builder<CandidatesRecord, CandidatesRecordBuilder> {
  _$CandidatesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _constituency;
  String? get constituency => _$this._constituency;
  set constituency(String? constituency) => _$this._constituency = constituency;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  String? _partyname;
  String? get partyname => _$this._partyname;
  set partyname(String? partyname) => _$this._partyname = partyname;

  String? _election;
  String? get election => _$this._election;
  set election(String? election) => _$this._election = election;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CandidatesRecordBuilder() {
    CandidatesRecord._initializeBuilder(this);
  }

  CandidatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _constituency = $v.constituency;
      _createdTime = $v.createdTime;
      _votes = $v.votes;
      _partyname = $v.partyname;
      _election = $v.election;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CandidatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CandidatesRecord;
  }

  @override
  void update(void Function(CandidatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CandidatesRecord build() => _build();

  _$CandidatesRecord _build() {
    final _$result = _$v ??
        new _$CandidatesRecord._(
            name: name,
            constituency: constituency,
            createdTime: createdTime,
            votes: votes,
            partyname: partyname,
            election: election,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
