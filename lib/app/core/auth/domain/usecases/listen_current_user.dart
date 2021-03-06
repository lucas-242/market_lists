import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_market/app/core/errors/errors.dart';
import 'package:easy_market/app/core/auth/domain/entities/user_info.dart';
import 'package:easy_market/app/core/auth/domain/repositories/auth_repository.dart';

part 'listen_current_user.g.dart';

abstract class ListenCurrentUser {
  Stream<Either<Failure, UserInfo?>> call();
}

@Injectable(singleton: false)
class ListenCurrentUserImpl implements ListenCurrentUser {
  AuthRepository repository;
  ListenCurrentUserImpl(this.repository);

  @override
  Stream<Either<Failure, UserInfo?>> call() {
    return repository.listenCurrentUser();
  }
}
