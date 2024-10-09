import 'package:local_storage_sqlite_drift/common/database/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_providers.g.dart';

@riverpod
Database database(DatabaseRef ref) => Database();
