import 'package:drift/drift.dart';
import 'package:local_storage_sqlite_drift/cake/model/cake.dart';
import 'package:local_storage_sqlite_drift/cake/repository/cake_repository.dart';
import 'package:local_storage_sqlite_drift/common/database/database.dart';

class DriftCakeRepository implements CakeRepository {
  final Database database;

  const DriftCakeRepository(this.database);

  @override
  Future deleteCake(int cakeId) =>
      database.managers.cakeTable.filter((cake) => cake.id(cakeId)).delete();

  @override
  Stream<List<Cake>> getAllCakesStream() {
    return database.managers.cakeTable.watch().map((data) =>
        data.map((element) => Cake.fromJson(element.toJson())).toList());
  }

  @override
  Future<int> insertCake(Cake cake) {
    return database.managers.cakeTable.create(
      (o) => o(
        name: cake.name,
        yummyness: cake.yummyness,
      ),
    );
  }

  @override
  Future updateCake(Cake cake) {
    return database.managers.cakeTable
        .filter(
          (row) => row.id(cake.id),
        )
        .update(
          (o) => o(
            name: Value(cake.name),
            yummyness: Value(cake.yummyness),
          ),
        );
  }
}
