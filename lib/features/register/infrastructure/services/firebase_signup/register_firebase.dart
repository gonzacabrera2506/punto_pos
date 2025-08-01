import 'package:stock_ventas/features/register/domain/entities/user.dart';
import 'package:stock_ventas/features/register/domain/repositories/register_repository.dart';

class RegisterFirebase extends RegisterRepository {
  @override
  Future<User> register(String name, String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
