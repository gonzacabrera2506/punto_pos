import 'package:stock_ventas/features/register/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> register(String email, String password);
}
