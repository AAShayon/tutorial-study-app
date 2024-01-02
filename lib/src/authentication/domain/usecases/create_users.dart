import 'package:equatable/equatable.dart';
import 'package:tutorial_app/core/usecase/usecase.dart';
import 'package:tutorial_app/core/utils/typedef.dart';
import 'package:tutorial_app/src/authentication/domain/repositories/authentication_repository.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  const CreateUser(this._repository);

  final AuthenticationRepository _repository;

  @override
  ResultVoid call(CreateUserParams params) async => _repository.createUser(
        createAt: params.createAT,
        name: params.name,
        avatar: params.avatar,
      );
}

class CreateUserParams extends Equatable {
  const CreateUserParams({
    required this.createAT,
    required this.name,
    required this.avatar,
  });

   const  CreateUserParams.empty()
       :this(createAT: '_empty.string',name: '_empty.string',avatar:'_empty.avatar' );

  final String createAT;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [createAT, name, avatar];
}

//  ResultVoid createUser({
//     required String createAt,
//     required String name,
//     required String avatar,
//   }) async =>
//       _repository.createUser(
//           createAt: createAt,
//           name: name,
//           avatar: avatar,
//       );
