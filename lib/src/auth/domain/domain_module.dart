import 'package:clean_riverpod/src/auth/data/data_module.dart';
import 'package:clean_riverpod/src/auth/domain/usecase/login_user_usecase.dart';
import 'package:clean_riverpod/src/auth/domain/usecase/login_user_usecase_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginUserUseCaseProvider = Provider<LoginUserUseCase>(
    (ref) => LoginUserUseCaseImpl(ref.watch(userRepositoryProvider)));
