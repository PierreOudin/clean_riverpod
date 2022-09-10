import 'package:clean_riverpod/src/auth/data/repository/user_repository_impl.dart';
import 'package:clean_riverpod/src/auth/domain/repository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'datasource//database/user_database.dart';
import 'datasource/database/user_database_impl.dart';

//final userDatabaseProvider = Provider<UserDatabase>((_) => UserDatabaseImpl());

final userRepositoryProvider = Provider<UserRepository>(
    ((ref) => UserRepositoryImpl(/*ref.watch(userDatabaseProvider)*/)));
