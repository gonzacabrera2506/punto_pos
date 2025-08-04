part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class RegisterUserWithFirebase extends RegisterEvent {
  final String id;
  final String email;
  final String name;
  final File? imageFile;

  const RegisterUserWithFirebase({
    required this.id,
    required this.email,
    required this.name,
    this.imageFile,
  });

  @override
  List<Object> get props => [
    id,
    email,
    name,
    {imageFile},
  ];
}
