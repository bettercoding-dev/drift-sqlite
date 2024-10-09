import 'package:local_storage_sqlite_drift/cake/model/cake.dart';
import 'package:local_storage_sqlite_drift/cake/repository/drift_cake_repository.dart';
import 'package:local_storage_sqlite_drift/global_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cake_repository.g.dart';

@riverpod
CakeRepository cakeRepository(CakeRepositoryRef ref) =>
    DriftCakeRepository(ref.watch(databaseProvider));

abstract interface class CakeRepository {
  Future<int> insertCake(Cake cake);

  Future updateCake(Cake cake);

  Future deleteCake(int cakeId);

  Stream<List<Cake>> getAllCakesStream();
}
