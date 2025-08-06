import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stock_ventas/features/register/infrastructure/services/firebase_signup/register_firebase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterFirebase _registerFirebase;
  RegisterBloc(this._registerFirebase) : super(RegisterState()) {
    on<RegisterUserWithFirebase>(_onRegisterUserWithFirebase);
  }

  void _onRegisterUserWithFirebase(
    RegisterUserWithFirebase event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(isChecking: true, isFailure: false));
    try {
      await _registerFirebase.register(event.name, event.email, event.password);
      emit(
        state.copyWith(isChecking: false, isFailure: false, isSuccess: true),
      );
    } catch (e) {
      emit(state.copyWith(isChecking: false, isFailure: true));
    }
  }
}
