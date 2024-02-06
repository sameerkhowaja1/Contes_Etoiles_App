// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $StoriesTable extends Stories with TableInfo<$StoriesTable, Story> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _storyIdMeta = const VerificationMeta('storyId');
  @override
  late final GeneratedColumn<String> storyId =
      GeneratedColumn<String>('story_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storyNameMeta = const VerificationMeta('storyName');
  @override
  late final GeneratedColumn<String> storyName =
      GeneratedColumn<String>('story_name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storyAudioUrlMeta = const VerificationMeta('storyAudioUrl');
  @override
  late final GeneratedColumn<String> storyAudioUrl =
      GeneratedColumn<String>('story_audio_url', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storyThumbnailMeta = const VerificationMeta('storyThumbnail');
  @override
  late final GeneratedColumn<String> storyThumbnail =
      GeneratedColumn<String>('story_thumbnail', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalDurationMeta = const VerificationMeta('totalDuration');
  @override
  late final GeneratedColumn<String> totalDuration =
      GeneratedColumn<String>('total_duration', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storyNarratorMeta = const VerificationMeta('storyNarrator');
  @override
  late final GeneratedColumn<String> storyNarrator =
      GeneratedColumn<String>('story_narrator', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _remainingDurationMeta = const VerificationMeta('remainingDuration');
  @override
  late final GeneratedColumn<String> remainingDuration =
      GeneratedColumn<String>('remaining_duration', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _durationPlayedMeta = const VerificationMeta('durationPlayed');
  @override
  late final GeneratedColumn<String> durationPlayed =
      GeneratedColumn<String>('duration_played', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>('is_active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'),
      defaultValue: const Constant(true));
  @override
  List<GeneratedColumn> get $columns =>
      [storyId, storyName, storyAudioUrl, storyThumbnail, totalDuration, storyNarrator, remainingDuration, durationPlayed, isActive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stories';
  @override
  VerificationContext validateIntegrity(Insertable<Story> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('story_id')) {
      context.handle(_storyIdMeta, storyId.isAcceptableOrUnknown(data['story_id']!, _storyIdMeta));
    } else if (isInserting) {
      context.missing(_storyIdMeta);
    }
    if (data.containsKey('story_name')) {
      context.handle(_storyNameMeta, storyName.isAcceptableOrUnknown(data['story_name']!, _storyNameMeta));
    } else if (isInserting) {
      context.missing(_storyNameMeta);
    }
    if (data.containsKey('story_audio_url')) {
      context.handle(_storyAudioUrlMeta, storyAudioUrl.isAcceptableOrUnknown(data['story_audio_url']!, _storyAudioUrlMeta));
    } else if (isInserting) {
      context.missing(_storyAudioUrlMeta);
    }
    if (data.containsKey('story_thumbnail')) {
      context.handle(_storyThumbnailMeta, storyThumbnail.isAcceptableOrUnknown(data['story_thumbnail']!, _storyThumbnailMeta));
    } else if (isInserting) {
      context.missing(_storyThumbnailMeta);
    }
    if (data.containsKey('total_duration')) {
      context.handle(_totalDurationMeta, totalDuration.isAcceptableOrUnknown(data['total_duration']!, _totalDurationMeta));
    } else if (isInserting) {
      context.missing(_totalDurationMeta);
    }
    if (data.containsKey('story_narrator')) {
      context.handle(_storyNarratorMeta, storyNarrator.isAcceptableOrUnknown(data['story_narrator']!, _storyNarratorMeta));
    } else if (isInserting) {
      context.missing(_storyNarratorMeta);
    }
    if (data.containsKey('remaining_duration')) {
      context.handle(_remainingDurationMeta, remainingDuration.isAcceptableOrUnknown(data['remaining_duration']!, _remainingDurationMeta));
    } else if (isInserting) {
      context.missing(_remainingDurationMeta);
    }
    if (data.containsKey('duration_played')) {
      context.handle(_durationPlayedMeta, durationPlayed.isAcceptableOrUnknown(data['duration_played']!, _durationPlayedMeta));
    } else if (isInserting) {
      context.missing(_durationPlayedMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta, isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {storyId};
  @override
  Story map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Story(
      storyId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}story_id'])!,
      storyName: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}story_name'])!,
      storyAudioUrl: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}story_audio_url'])!,
      storyThumbnail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}story_thumbnail'])!,
      totalDuration: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}total_duration'])!,
      storyNarrator: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}story_narrator'])!,
      remainingDuration: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}remaining_duration'])!,
      durationPlayed: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}duration_played'])!,
      isActive: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!,
    );
  }

  @override
  $StoriesTable createAlias(String alias) {
    return $StoriesTable(attachedDatabase, alias);
  }
}

class Story extends DataClass implements Insertable<Story> {
  final String storyId;
  final String storyName;
  final String storyAudioUrl;
  final String storyThumbnail;
  final String totalDuration;
  final String storyNarrator;
  final String remainingDuration;
  final String durationPlayed;
  final bool isActive;
  const Story(
      {required this.storyId,
      required this.storyName,
      required this.storyAudioUrl,
      required this.storyThumbnail,
      required this.totalDuration,
      required this.storyNarrator,
      required this.remainingDuration,
      required this.durationPlayed,
      required this.isActive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['story_id'] = Variable<String>(storyId);
    map['story_name'] = Variable<String>(storyName);
    map['story_audio_url'] = Variable<String>(storyAudioUrl);
    map['story_thumbnail'] = Variable<String>(storyThumbnail);
    map['total_duration'] = Variable<String>(totalDuration);
    map['story_narrator'] = Variable<String>(storyNarrator);
    map['remaining_duration'] = Variable<String>(remainingDuration);
    map['duration_played'] = Variable<String>(durationPlayed);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  StoriesCompanion toCompanion(bool nullToAbsent) {
    return StoriesCompanion(
      storyId: Value(storyId),
      storyName: Value(storyName),
      storyAudioUrl: Value(storyAudioUrl),
      storyThumbnail: Value(storyThumbnail),
      totalDuration: Value(totalDuration),
      storyNarrator: Value(storyNarrator),
      remainingDuration: Value(remainingDuration),
      durationPlayed: Value(durationPlayed),
      isActive: Value(isActive),
    );
  }

  factory Story.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Story(
      storyId: serializer.fromJson<String>(json['storyId']),
      storyName: serializer.fromJson<String>(json['storyName']),
      storyAudioUrl: serializer.fromJson<String>(json['storyAudioUrl']),
      storyThumbnail: serializer.fromJson<String>(json['storyThumbnail']),
      totalDuration: serializer.fromJson<String>(json['totalDuration']),
      storyNarrator: serializer.fromJson<String>(json['storyNarrator']),
      remainingDuration: serializer.fromJson<String>(json['remainingDuration']),
      durationPlayed: serializer.fromJson<String>(json['durationPlayed']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'storyId': serializer.toJson<String>(storyId),
      'storyName': serializer.toJson<String>(storyName),
      'storyAudioUrl': serializer.toJson<String>(storyAudioUrl),
      'storyThumbnail': serializer.toJson<String>(storyThumbnail),
      'totalDuration': serializer.toJson<String>(totalDuration),
      'storyNarrator': serializer.toJson<String>(storyNarrator),
      'remainingDuration': serializer.toJson<String>(remainingDuration),
      'durationPlayed': serializer.toJson<String>(durationPlayed),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Story copyWith(
          {String? storyId,
          String? storyName,
          String? storyAudioUrl,
          String? storyThumbnail,
          String? totalDuration,
          String? storyNarrator,
          String? remainingDuration,
          String? durationPlayed,
          bool? isActive}) =>
      Story(
        storyId: storyId ?? this.storyId,
        storyName: storyName ?? this.storyName,
        storyAudioUrl: storyAudioUrl ?? this.storyAudioUrl,
        storyThumbnail: storyThumbnail ?? this.storyThumbnail,
        totalDuration: totalDuration ?? this.totalDuration,
        storyNarrator: storyNarrator ?? this.storyNarrator,
        remainingDuration: remainingDuration ?? this.remainingDuration,
        durationPlayed: durationPlayed ?? this.durationPlayed,
        isActive: isActive ?? this.isActive,
      );
  @override
  String toString() {
    return (StringBuffer('Story(')
          ..write('storyId: $storyId, ')
          ..write('storyName: $storyName, ')
          ..write('storyAudioUrl: $storyAudioUrl, ')
          ..write('storyThumbnail: $storyThumbnail, ')
          ..write('totalDuration: $totalDuration, ')
          ..write('storyNarrator: $storyNarrator, ')
          ..write('remainingDuration: $remainingDuration, ')
          ..write('durationPlayed: $durationPlayed, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(storyId, storyName, storyAudioUrl, storyThumbnail, totalDuration, storyNarrator, remainingDuration, durationPlayed, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Story &&
          other.storyId == this.storyId &&
          other.storyName == this.storyName &&
          other.storyAudioUrl == this.storyAudioUrl &&
          other.storyThumbnail == this.storyThumbnail &&
          other.totalDuration == this.totalDuration &&
          other.storyNarrator == this.storyNarrator &&
          other.remainingDuration == this.remainingDuration &&
          other.durationPlayed == this.durationPlayed &&
          other.isActive == this.isActive);
}

class StoriesCompanion extends UpdateCompanion<Story> {
  final Value<String> storyId;
  final Value<String> storyName;
  final Value<String> storyAudioUrl;
  final Value<String> storyThumbnail;
  final Value<String> totalDuration;
  final Value<String> storyNarrator;
  final Value<String> remainingDuration;
  final Value<String> durationPlayed;
  final Value<bool> isActive;
  final Value<int> rowid;
  const StoriesCompanion({
    this.storyId = const Value.absent(),
    this.storyName = const Value.absent(),
    this.storyAudioUrl = const Value.absent(),
    this.storyThumbnail = const Value.absent(),
    this.totalDuration = const Value.absent(),
    this.storyNarrator = const Value.absent(),
    this.remainingDuration = const Value.absent(),
    this.durationPlayed = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StoriesCompanion.insert({
    required String storyId,
    required String storyName,
    required String storyAudioUrl,
    required String storyThumbnail,
    required String totalDuration,
    required String storyNarrator,
    required String remainingDuration,
    required String durationPlayed,
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : storyId = Value(storyId),
        storyName = Value(storyName),
        storyAudioUrl = Value(storyAudioUrl),
        storyThumbnail = Value(storyThumbnail),
        totalDuration = Value(totalDuration),
        storyNarrator = Value(storyNarrator),
        remainingDuration = Value(remainingDuration),
        durationPlayed = Value(durationPlayed);
  static Insertable<Story> custom({
    Expression<String>? storyId,
    Expression<String>? storyName,
    Expression<String>? storyAudioUrl,
    Expression<String>? storyThumbnail,
    Expression<String>? totalDuration,
    Expression<String>? storyNarrator,
    Expression<String>? remainingDuration,
    Expression<String>? durationPlayed,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (storyId != null) 'story_id': storyId,
      if (storyName != null) 'story_name': storyName,
      if (storyAudioUrl != null) 'story_audio_url': storyAudioUrl,
      if (storyThumbnail != null) 'story_thumbnail': storyThumbnail,
      if (totalDuration != null) 'total_duration': totalDuration,
      if (storyNarrator != null) 'story_narrator': storyNarrator,
      if (remainingDuration != null) 'remaining_duration': remainingDuration,
      if (durationPlayed != null) 'duration_played': durationPlayed,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StoriesCompanion copyWith(
      {Value<String>? storyId,
      Value<String>? storyName,
      Value<String>? storyAudioUrl,
      Value<String>? storyThumbnail,
      Value<String>? totalDuration,
      Value<String>? storyNarrator,
      Value<String>? remainingDuration,
      Value<String>? durationPlayed,
      Value<bool>? isActive,
      Value<int>? rowid}) {
    return StoriesCompanion(
      storyId: storyId ?? this.storyId,
      storyName: storyName ?? this.storyName,
      storyAudioUrl: storyAudioUrl ?? this.storyAudioUrl,
      storyThumbnail: storyThumbnail ?? this.storyThumbnail,
      totalDuration: totalDuration ?? this.totalDuration,
      storyNarrator: storyNarrator ?? this.storyNarrator,
      remainingDuration: remainingDuration ?? this.remainingDuration,
      durationPlayed: durationPlayed ?? this.durationPlayed,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (storyId.present) {
      map['story_id'] = Variable<String>(storyId.value);
    }
    if (storyName.present) {
      map['story_name'] = Variable<String>(storyName.value);
    }
    if (storyAudioUrl.present) {
      map['story_audio_url'] = Variable<String>(storyAudioUrl.value);
    }
    if (storyThumbnail.present) {
      map['story_thumbnail'] = Variable<String>(storyThumbnail.value);
    }
    if (totalDuration.present) {
      map['total_duration'] = Variable<String>(totalDuration.value);
    }
    if (storyNarrator.present) {
      map['story_narrator'] = Variable<String>(storyNarrator.value);
    }
    if (remainingDuration.present) {
      map['remaining_duration'] = Variable<String>(remainingDuration.value);
    }
    if (durationPlayed.present) {
      map['duration_played'] = Variable<String>(durationPlayed.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoriesCompanion(')
          ..write('storyId: $storyId, ')
          ..write('storyName: $storyName, ')
          ..write('storyAudioUrl: $storyAudioUrl, ')
          ..write('storyThumbnail: $storyThumbnail, ')
          ..write('totalDuration: $totalDuration, ')
          ..write('storyNarrator: $storyNarrator, ')
          ..write('remainingDuration: $remainingDuration, ')
          ..write('durationPlayed: $durationPlayed, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $StoriesTable stories = $StoriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [stories];
}
