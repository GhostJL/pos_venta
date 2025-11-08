import 'package:pos_venta/domain/entities/user.dart';
import 'package:pos_venta/domain/models/user_model.dart';

class UserMapper {
  static UserModel userToUserModel(User user) {
    return UserModel(
      id: user.id,
      username: user.username,
      passwordHash: user.passwordHash,
      pinCode: user.pinCode,
      status: user.status,
      createdAt: user.createdAt,
    );
  }

  static User userModelToUser(UserModel userModel) {
    return User()
      ..id = userModel.id
      ..username = userModel.username
      ..passwordHash = userModel.passwordHash
      ..pinCode = userModel.pinCode
      ..status = userModel.status
      ..createdAt = userModel.createdAt;
  }
}
