// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CakeTableTable extends CakeTable
    with TableInfo<$CakeTableTable, CakeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CakeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _yummynessMeta =
      const VerificationMeta('yummyness');
  @override
  late final GeneratedColumn<int> yummyness = GeneratedColumn<int>(
      'yummyness', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, yummyness];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cake_table';
  @override
  VerificationContext validateIntegrity(Insertable<CakeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('yummyness')) {
      context.handle(_yummynessMeta,
          yummyness.isAcceptableOrUnknown(data['yummyness']!, _yummynessMeta));
    } else if (isInserting) {
      context.missing(_yummynessMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CakeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CakeTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      yummyness: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}yummyness'])!,
    );
  }

  @override
  $CakeTableTable createAlias(String alias) {
    return $CakeTableTable(attachedDatabase, alias);
  }
}

class CakeTableData extends DataClass implements Insertable<CakeTableData> {
  final int id;
  final String name;
  final int yummyness;
  const CakeTableData(
      {required this.id, required this.name, required this.yummyness});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['yummyness'] = Variable<int>(yummyness);
    return map;
  }

  CakeTableCompanion toCompanion(bool nullToAbsent) {
    return CakeTableCompanion(
      id: Value(id),
      name: Value(name),
      yummyness: Value(yummyness),
    );
  }

  factory CakeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CakeTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      yummyness: serializer.fromJson<int>(json['yummyness']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'yummyness': serializer.toJson<int>(yummyness),
    };
  }

  CakeTableData copyWith({int? id, String? name, int? yummyness}) =>
      CakeTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        yummyness: yummyness ?? this.yummyness,
      );
  CakeTableData copyWithCompanion(CakeTableCompanion data) {
    return CakeTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      yummyness: data.yummyness.present ? data.yummyness.value : this.yummyness,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CakeTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('yummyness: $yummyness')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, yummyness);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CakeTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.yummyness == this.yummyness);
}

class CakeTableCompanion extends UpdateCompanion<CakeTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> yummyness;
  const CakeTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.yummyness = const Value.absent(),
  });
  CakeTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int yummyness,
  })  : name = Value(name),
        yummyness = Value(yummyness);
  static Insertable<CakeTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? yummyness,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (yummyness != null) 'yummyness': yummyness,
    });
  }

  CakeTableCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<int>? yummyness}) {
    return CakeTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      yummyness: yummyness ?? this.yummyness,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (yummyness.present) {
      map['yummyness'] = Variable<int>(yummyness.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CakeTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('yummyness: $yummyness')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $CakeTableTable cakeTable = $CakeTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cakeTable];
}

typedef $$CakeTableTableCreateCompanionBuilder = CakeTableCompanion Function({
  Value<int> id,
  required String name,
  required int yummyness,
});
typedef $$CakeTableTableUpdateCompanionBuilder = CakeTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<int> yummyness,
});

class $$CakeTableTableFilterComposer
    extends FilterComposer<_$Database, $CakeTableTable> {
  $$CakeTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get yummyness => $state.composableBuilder(
      column: $state.table.yummyness,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CakeTableTableOrderingComposer
    extends OrderingComposer<_$Database, $CakeTableTable> {
  $$CakeTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get yummyness => $state.composableBuilder(
      column: $state.table.yummyness,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CakeTableTableTableManager extends RootTableManager<
    _$Database,
    $CakeTableTable,
    CakeTableData,
    $$CakeTableTableFilterComposer,
    $$CakeTableTableOrderingComposer,
    $$CakeTableTableCreateCompanionBuilder,
    $$CakeTableTableUpdateCompanionBuilder,
    (CakeTableData, BaseReferences<_$Database, $CakeTableTable, CakeTableData>),
    CakeTableData,
    PrefetchHooks Function()> {
  $$CakeTableTableTableManager(_$Database db, $CakeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CakeTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CakeTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> yummyness = const Value.absent(),
          }) =>
              CakeTableCompanion(
            id: id,
            name: name,
            yummyness: yummyness,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required int yummyness,
          }) =>
              CakeTableCompanion.insert(
            id: id,
            name: name,
            yummyness: yummyness,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CakeTableTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $CakeTableTable,
    CakeTableData,
    $$CakeTableTableFilterComposer,
    $$CakeTableTableOrderingComposer,
    $$CakeTableTableCreateCompanionBuilder,
    $$CakeTableTableUpdateCompanionBuilder,
    (CakeTableData, BaseReferences<_$Database, $CakeTableTable, CakeTableData>),
    CakeTableData,
    PrefetchHooks Function()>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$CakeTableTableTableManager get cakeTable =>
      $$CakeTableTableTableManager(_db, _db.cakeTable);
}
