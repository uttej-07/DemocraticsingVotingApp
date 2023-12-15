// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elections_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ElectionsRecord> _$electionsRecordSerializer =
    new _$ElectionsRecordSerializer();

class _$ElectionsRecordSerializer
    implements StructuredSerializer<ElectionsRecord> {
  @override
  final Iterable<Type> types = const [ElectionsRecord, _$ElectionsRecord];
  @override
  final String wireName = 'ElectionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ElectionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.electionname;
    if (value != null) {
      result
        ..add('electionname')
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
    value = object.fromdate;
    if (value != null) {
      result
        ..add('fromdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.todate;
    if (value != null) {
      result
        ..add('todate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalcandidates;
    if (value != null) {
      result
        ..add('totalcandidates')
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
  ElectionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ElectionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'electionname':
          result.electionname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'candidate':
          result.candidate = serializers.deserialize(value,
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
        case 'fromdate':
          result.fromdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'todate':
          result.todate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'totalcandidates':
          result.totalcandidates = serializers.deserialize(value,
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

class _$ElectionsRecord extends ElectionsRecord {
  @override
  final String? electionname;
  @override
  final String? candidate;
  @override
  final String? constituency;
  @override
  final DateTime? createdTime;
  @override
  final int? votes;
  @override
  final String? fromdate;
  @override
  final String? todate;
  @override
  final String? totalcandidates;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ElectionsRecord([void Function(ElectionsRecordBuilder)? updates]) =>
      (new ElectionsRecordBuilder()..update(updates))._build();

  _$ElectionsRecord._(
      {this.electionname,
      this.candidate,
      this.constituency,
      this.createdTime,
      this.votes,
      this.fromdate,
      this.todate,
      this.totalcandidates,
      this.ffRef})
      : super._();

  @override
  ElectionsRecord rebuild(void Function(ElectionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ElectionsRecordBuilder toBuilder() =>
      new ElectionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ElectionsRecord &&
        electionname == other.electionname &&
        candidate == other.candidate &&
        constituency == other.constituency &&
        createdTime == other.createdTime &&
        votes == other.votes &&
        fromdate == other.fromdate &&
        todate == other.todate &&
        totalcandidates == other.totalcandidates &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, electionname.hashCode),
                                    candidate.hashCode),
                                constituency.hashCode),
                            createdTime.hashCode),
                        votes.hashCode),
                    fromdate.hashCode),
                todate.hashCode),
            totalcandidates.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ElectionsRecord')
          ..add('electionname', electionname)
          ..add('candidate', candidate)
          ..add('constituency', constituency)
          ..add('createdTime', createdTime)
          ..add('votes', votes)
          ..add('fromdate', fromdate)
          ..add('todate', todate)
          ..add('totalcandidates', totalcandidates)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ElectionsRecordBuilder
    implements Builder<ElectionsRecord, ElectionsRecordBuilder> {
  _$ElectionsRecord? _$v;

  String? _electionname;
  String? get electionname => _$this._electionname;
  set electionname(String? electionname) => _$this._electionname = electionname;

  String? _candidate;
  String? get candidate => _$this._candidate;
  set candidate(String? candidate) => _$this._candidate = candidate;

  String? _constituency;
  String? get constituency => _$this._constituency;
  set constituency(String? constituency) => _$this._constituency = constituency;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  int? _votes;
  int? get votes => _$this._votes;
  set votes(int? votes) => _$this._votes = votes;

  String? _fromdate;
  String? get fromdate => _$this._fromdate;
  set fromdate(String? fromdate) => _$this._fromdate = fromdate;

  String? _todate;
  String? get todate => _$this._todate;
  set todate(String? todate) => _$this._todate = todate;

  String? _totalcandidates;
  String? get totalcandidates => _$this._totalcandidates;
  set totalcandidates(String? totalcandidates) =>
      _$this._totalcandidates = totalcandidates;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ElectionsRecordBuilder() {
    ElectionsRecord._initializeBuilder(this);
  }

  ElectionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _electionname = $v.electionname;
      _candidate = $v.candidate;
      _constituency = $v.constituency;
      _createdTime = $v.createdTime;
      _votes = $v.votes;
      _fromdate = $v.fromdate;
      _todate = $v.todate;
      _totalcandidates = $v.totalcandidates;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ElectionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ElectionsRecord;
  }

  @override
  void update(void Function(ElectionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ElectionsRecord build() => _build();

  _$ElectionsRecord _build() {
    final _$result = _$v ??
        new _$ElectionsRecord._(
            electionname: electionname,
            candidate: candidate,
            constituency: constituency,
            createdTime: createdTime,
            votes: votes,
            fromdate: fromdate,
            todate: todate,
            totalcandidates: totalcandidates,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
