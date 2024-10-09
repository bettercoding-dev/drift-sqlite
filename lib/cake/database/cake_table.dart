import 'package:drift/drift.dart';
import 'package:local_storage_sqlite_drift/cake/model/cake.dart';

@UseRowClass(Cake)
class CakeTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  IntColumn get yummyness => integer()();
}
