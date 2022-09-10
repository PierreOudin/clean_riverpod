import 'package:clean_riverpod/src/auth/data/datasource/database/user_database.dart';
import 'package:clean_riverpod/src/auth/data/entity/user_entity.dart';

class UserDatabaseImpl implements UserDatabase {
  static const _databaseName = 'user_database';
  static const _tableName = 'user_table';
  static const _databaseVersion = 1;
  static const _columnEmail = 'email';
  static const _columnPassword = 'password';
  //static Database? _database;

  @override
  Future<void> login(final UserEntity user) async {}
}
