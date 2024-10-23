import 'package:flutter_bloc/flutter_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

// The cubit holds the state which includes both status and error messages
class LoginFormCubit extends Cubit<LoginState> {
  LoginFormCubit() : super(LoginState.initial());

  // Simulate a login process
  Future<void> login(String username, String password) async {
    if (username.isEmpty || password.isEmpty) {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: "Username and password can't be empty",
      ));
      return;
    }

    emit(state.copyWith(status: LoginStatus.loading));

    // Simulate a network call delay
    await Future.delayed(const Duration(seconds: 2));

    // Fake authentication check
    if (username == 'user' && password == 'password') {
      emit(state.copyWith(status: LoginStatus.success));
    } else {
      emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: "Invalid username or password",
      ));
    }
  }
}

// Define the state for the LoginFormCubit
class LoginState {
  final LoginStatus status;
  final String errorMessage;

  LoginState({
    required this.status,
    this.errorMessage = '',
  });

  // Initial state
  factory LoginState.initial() {
    return LoginState(status: LoginStatus.initial);
  }

  // Create a copy of the state with updated fields
  LoginState copyWith({LoginStatus? status, String? errorMessage}) {
    return LoginState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
