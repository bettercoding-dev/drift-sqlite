// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cake_database.dart';

// ignore_for_file: type=lint
class $CakeTableTable extends CakeTable with TableInfo<$CakeTableTable, Cake> {
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
  VerificationContext validateIntegrity(Insertable<Cake> instance,
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
  Cake map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cake(
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

class CakeTableCompanion extends UpdateCompanion<Cake> {
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
  static Insertable<Cake> custom({
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

abstract class _$CakeDatabase extends GeneratedDatabase {
  _$CakeDatabase(QueryExecutor e) : super(e);
  $CakeDatabaseManager get managers => $CakeDatabaseManager(this);
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
    extends FilterComposer<_$CakeDatabase, $CakeTableTable> {
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
    extends OrderingComposer<_$CakeDatabase, $CakeTableTable> {
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
    _$CakeDatabase,
    $CakeTableTable,
    Cake,
    $$CakeTableTableFilterComposer,
    $$CakeTableTableOrderingComposer,
    $$CakeTableTableCreateCompanionBuilder,
    $$CakeTableTableUpdateCompanionBuilder,
    (Cake, BaseReferences<_$CakeDatabase, $CakeTableTable, Cake>),
    Cake,
    PrefetchHooks Function()> {
  $$CakeTableTableTableManager(_$CakeDatabase db, $CakeTableTable table)
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
    _$CakeDatabase,
    $CakeTableTable,
    Cake,
    $$CakeTableTableFilterComposer,
    $$CakeTableTableOrderingComposer,
    $$CakeTableTableCreateCompanionBuilder,
    $$CakeTableTableUpdateCompanionBuilder,
    (Cake, BaseReferences<_$CakeDatabase, $CakeTableTable, Cake>),
    Cake,
    PrefetchHooks Function()>;

class $CakeDatabaseManager {
  final _$CakeDatabase _db;
  $CakeDatabaseManager(this._db);
  $$CakeTableTableTableManager get cakeTable =>
      $$CakeTableTableTableManager(_db, _db.cakeTable);
}
