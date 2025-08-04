part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final bool isChecking;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  final String errorMessage;

  const RegisterState({
    this.isChecking = false,
    this.isSubmitting = false,
    this.isSuccess = false,
    this.isFailure = false,
    this.errorMessage = '',
  });

  RegisterState copyWith({
    bool? isChecking,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
    String? errorMessage,
  }) {
    return RegisterState(
      isChecking: isChecking ?? this.isChecking,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [isChecking, isSubmitting, isSuccess, isFailure];
}
