
import 'package:tutorial_app/core/usecase/usecase.dart';
import 'package:tutorial_app/core/utils/typedef.dart';
import 'package:tutorial_app/src/authentication/domain/entities/user.dart';
import 'package:tutorial_app/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsers extends UseCaseWithoutParams<List<User>>{

  const GetUsers(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture<List<User>> call() async=>_repository.getUsers();
}