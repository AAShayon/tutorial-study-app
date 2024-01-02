 import 'package:dartz/dartz.dart';
import 'package:tutorial_app/src/authentication/domain/entities/user.dart';

abstract class AuthenticationRepository{
  const AuthenticationRepository();


 Future<Either<Exception ,void>> createUser({
    required String createAt ,
    required String name,
    required String avatar,
 });


 Future<(Exception ,List<User>)> getUsers();

 }