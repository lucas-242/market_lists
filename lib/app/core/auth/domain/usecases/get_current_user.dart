import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_market/app/core/auth/domain/entities/user_info.dart';
import 'package:easy_market/app/core/auth/domain/repositories/auth_repository.dart';
import 'package:easy_market/app/core/errors/errors.dart';

part 'get_current_user.g.dart';

abstract class GetCurrentUser {
  Future<Either<Failure, UserInfo>> call();
}

@Injectable(singleton: false)
class GetCurrentUserImpl implements GetCurrentUser {
  AuthRepository repository;
  GetCurrentUserImpl(this.repository);

  @override
  Future<Either<Failure, UserInfo>> call() async {
    return await repository.getCurrentUser();
  }
}
