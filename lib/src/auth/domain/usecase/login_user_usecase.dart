import 'package:clean_riverpod/src/auth/domain/model/user.dart';

abstract class LoginUserUseCase {
  Future<void> execute(
    final String email,
    final String password,
  );
}
