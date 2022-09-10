import 'package:clean_riverpod/src/auth/data/datasource/database/user_database.dart';
import 'package:clean_riverpod/src/auth/data/mapper/user_mapper.dart';
import 'package:clean_riverpod/src/auth/domain/model/user.dart';
import 'package:clean_riverpod/src/auth/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  //final UserDatabase database;

  const UserRepositoryImpl(/*this.database*/);

  @override
  Future<void> login(final String email, final String password) async {
    //await database.login(
    //    UserMapper.transformToMap(User(email: email, password: password)));
  }
}
