import 'package:equatable/equatable.dart';

class User extends Equatable{
  const User({
     required this.id,
     required this.createAt,
     required this.name,
     required this.avatar,
});

  const User.empty(): this(id: 1,createAt: '_empty.createAt', avatar: '_empty.avatar', name: '_empty.name');
final int id;
final String createAt;
final String name;
final String avatar;

  @override
  List<Object?> get props => [id];
}