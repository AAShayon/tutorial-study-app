 import 'package:dartz/dartz.dart';
import 'package:tutorial_app/core/errors/failure.dart';
import 'package:tutorial_app/core/utils/typedef.dart';
import 'package:tutorial_app/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository{
  const AuthenticationRepository();


 ResultVoid createUser({
    required String createAt ,
    required String name,
    required String avatar,
 });


 ResultFuture<List<User>> getUsers();

 }