// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'votes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VotesRecord> _$votesRecordSerializer = new _$VotesRecordSerializer();

class _$VotesRecordSerializer implements StructuredSerializer<VotesRecord> {
  @override
  final Iterable<Type> types = const [VotesRecord, _$VotesRecord];
  @override
  final String wireName = 'VotesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VotesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.voter;
    if (value != null) {
      result
        ..add('voter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.candidate;
    if (value != null) {
      result
        ..add('candidate')
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
  VotesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VotesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'voter':
          result.voter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'candidate':
          result.candidate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$VotesRecord extends VotesRecord {
  @override
  final String? voter;
  @override
  final String? candidate;
  @override
  final DateTime? createdTime;
  @override
  final String? election;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VotesRecord([void Function(VotesRecordBuilder)? updates]) =>
      (new VotesRecordBuilder()..update(updates))._build();

  _$VotesRecord._(
      {this.voter, this.candidate, this.createdTime, this.election, this.ffRef})
      : super._();

  @override
  VotesRecord rebuild(void Function(VotesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VotesRecordBuilder toBuilder() => new VotesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VotesRecord &&
        voter == other.voter &&
        candidate == other.candidate &&
        createdTime == other.createdTime &&
        election == other.election &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, voter.hashCode), candidate.hashCode),
                createdTime.hashCode),
            election.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VotesRecord')
          ..add('voter', voter)
          ..add('candidate', candidate)
          ..add('createdTime', createdTime)
          ..add('election', election)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VotesRecordBuilder implements Builder<VotesRecord, VotesRecordBuilder> {
  _$VotesRecord? _$v;

  String? _voter;
  String? get voter => _$this._voter;
  set voter(String? voter) => _$this._voter = voter;

  String? _candidate;
  String? get candidate => _$this._candidate;
  set candidate(String? candidate) => _$this._candidate = candidate;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _election;
  String? get election => _$this._election;
  set election(String? election) => _$this._election = election;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VotesRecordBuilder() {
    VotesRecord._initializeBuilder(this);
  }

  VotesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voter = $v.voter;
      _candidate = $v.candidate;
      _createdTime = $v.createdTime;
      _election = $v.election;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VotesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VotesRecord;
  }

  @override
  void update(void Function(VotesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VotesRecord build() => _build();

  _$VotesRecord _build() {
    final _$result = _$v ??
        new _$VotesRecord._(
            voter: voter,
            candidate: candidate,
            createdTime: createdTime,
            election: election,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
