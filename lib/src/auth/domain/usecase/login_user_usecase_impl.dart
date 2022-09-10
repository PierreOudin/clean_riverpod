import 'package:clean_riverpod/src/auth/domain/model/user.dart';
import 'package:clean_riverpod/src/auth/domain/repository/user_repository.dart';
import 'package:clean_riverpod/src/auth/domain/usecase/login_user_usecase.dart';

class LoginUserUseCaseImpl implements LoginUserUseCase {
  final UserRepository _repository;

  const LoginUserUseCaseImpl(this._repository);

  @override
  Future<void> execute(
    String email,
    String password,
  ) {
    return _repository.login(email, password);
  }
}
