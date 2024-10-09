import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:local_storage_sqlite_drift/cake/database/cake_table.dart';
import 'package:local_storage_sqlite_drift/cake/model/cake.dart';

part 'cake_database.g.dart';

@DriftDatabase(tables: [CakeTable])
class CakeDatabase extends _$CakeDatabase {
  CakeDatabase(): super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection(){
    return driftDatabase(name: 'cake_database');
  }
}
