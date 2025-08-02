import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stock_ventas/features/register/domain/entities/user.dart'
    as user;
import 'package:stock_ventas/features/register/domain/repositories/register_firebase_repository.dart';

class RegisterFirebase implements RegisterFirebaseRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<user.User> register(String name, String email, String password) async {
    try {
      //User Firebase Auth
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //Uuid user
      final uid = userCredential.user!.uid;

      //save user on collection User
      await _firestore.collection('users').doc(uid).set({
        'name': name,
        'email': email,
      });

      return user.User(id: uid, name: name, email: email);
    } on FirebaseAuthException catch (e) {
      // Manejar errores específicos de Firebase Auth
      throw Exception('Error de autenticación: ${e.message}');
    } catch (e) {
      throw Exception('Error desconocido durante el registro');
    }
  }
}
