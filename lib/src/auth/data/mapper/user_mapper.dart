import 'package:clean_riverpod/src/auth/data/entity/user_entity.dart';
import 'package:clean_riverpod/src/auth/domain/model/user.dart';

class UserMapper {
  static User transformToModel(final UserEntity entity) {
    return User(
      email: entity['email'],
      password: entity['password'],
    );
  }

  static UserEntity transformToMap(final User model) {
    return {
      'email': model.email,
      'password': model.password,
    };
  }
}
