import 'package:flutter_realm_music/entity/i_user.dart';
import 'package:flutter_realm_music/object/object.dart';

class UserEntity extends IUser {
  @override
  final int id;
  @override
  final String username;
  @override
  final String userAvatar;
  @override
  final String userSignature;

  UserEntity(this.id, this.username, this.userAvatar, this.userSignature);

  factory UserEntity.fromObject(UserObject object) {
    return UserEntity(object.id, object.name, object.avatar, object.signature);
  }

  @override
  String toString() {
    return 'UserEntity{id: $id, username: $username, userAvatar: $userAvatar, userSignature: $userSignature}';
  }
}
