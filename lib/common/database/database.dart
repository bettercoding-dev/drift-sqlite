import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:local_storage_sqlite_drift/cake/database/cake_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [CakeTable])
class Database extends _$Database {
  Database(): super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection(){
    return driftDatabase(name: 'cake_database');
  }
}
