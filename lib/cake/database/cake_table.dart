import 'package:drift/drift.dart';

class CakeTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  IntColumn get yummyness => integer()();
}
