import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_market/app/core/auth/domain/repositories/auth_repository.dart';
import 'package:easy_market/app/core/errors/errors.dart';
part 'sign_out.g.dart';

abstract class SignOut {
  Future<Either<Failure, Unit>> call();
}

@Injectable(singleton: false)
class SignOutImpl extends SignOut {
  AuthRepository repository;

  SignOutImpl(this.repository);

  @override
  Future<Either<Failure, Unit>> call() async {
    return await repository.signOut();
  }
}
