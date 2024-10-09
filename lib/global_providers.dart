import 'package:local_storage_sqlite_drift/common/database/cake_database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_providers.g.dart';

@riverpod
CakeDatabase database(DatabaseRef ref) => CakeDatabase();
