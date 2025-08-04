import 'dart:io';

import 'package:stock_ventas/features/register/domain/entities/user.dart';

abstract class RegisterFirebaseRepository {
  Future<User> register(
    String name,
    String email,
    String password, {
    File? imageFile,
  });
}
