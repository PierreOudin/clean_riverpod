import 'package:clean_riverpod/src/auth/data/entity/user_entity.dart';

abstract class UserDatabase {
  Future<void> login(final UserEntity userEntity);
}
