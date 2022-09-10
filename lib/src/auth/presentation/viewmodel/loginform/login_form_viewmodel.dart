import 'package:clean_riverpod/src/auth/domain/domain_module.dart';
import 'package:clean_riverpod/src/auth/domain/model/user.dart';
import 'package:clean_riverpod/src/auth/domain/usecase/login_user_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginFormViewModelProvider =
    Provider.autoDispose.family<LoginFormViewModel, User?>((ref, login) {
  return LoginFormViewModel(
      ref.read, login, ref.watch(loginUserUseCaseProvider));
});

class LoginFormViewModel {
  var _email = '';
  var _password = '';
  final LoginUserUseCase _loginUserUseCase;

  LoginFormViewModel(
      final Reader read, final User? user, this._loginUserUseCase) {
    _initLogin(user);
  }

  _initLogin(final User? user) {
    if (user != null) {
      _email = user.email;
      _password = user.password;
    }
  }

  login() {
    _loginUserUseCase.execute(_email, _password);
  }

  String appBarTitle() => 'Login Page';

  String initialEmailValue() => _email;

  String initialPasswordValue() => _password;

  setEmail(final String value) => _email = value;

  setPassword(final String value) => _password = value;

  String? validateEmail() {
    if (_email.isEmpty) {
      return 'Enter an email';
    } else {
      return null;
    }
  }

  String? validatePassword() {
    if (_password.isEmpty) {
      return 'Enter a password';
    } else {
      return null;
    }
  }
}
