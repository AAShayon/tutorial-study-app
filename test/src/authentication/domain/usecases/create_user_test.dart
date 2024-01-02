
//what does the class depend on
//--Answer---AuthenticationRepository
//how can we create a fake version of the dependency
//---Use Mocktail
//how do we control what our dependencies do
//---using the mocktail's Api

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tutorial_app/core/errors/failure.dart';
import 'package:tutorial_app/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:tutorial_app/src/authentication/domain/usecases/create_users.dart';

class MockAuthenticationRepository extends Mock implements AuthenticationRepository{

}

void main(){
  late CreateUser usecase;
  late AuthenticationRepository repository;
  setUpAll(() {
    repository=MockAuthenticationRepository();
usecase=CreateUser(repository);
// registerFallbackValue(Football());
  });
  const params=CreateUserParams.empty();
test('should call the [AuthRepository.createUser]', 
        () async {
  when(()=>repository.createUser(
      createAt: any(named: 'createAt'),
      name: any(named: 'name'),
      avatar: any(named: 'avatar'))).thenAnswer((invocation) async =>const Right(null));
///Arrange
        //final params=  const CreateUserParams(createAT: 'createAT', name: 'name', avatar: 'avatar');
  ///Act
final result= await usecase(params);
  ///Assert
expect(result, equals(const Right<dynamic ,void>(null)));
verify(()=> repository.createUser(
    createAt: params.createAT, 
    name: params.name, 
    avatar:params.avatar),).called(1);
verifyNoMoreInteractions(repository);
}
);
}


//
// class Football {
//
// }