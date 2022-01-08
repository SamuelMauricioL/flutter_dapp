part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  const SignInState({
    this.email = '',
    this.password = '',
    this.complete = false,
  });

  final String email;
  final String password;
  final bool complete;

  @override
  List<Object> get props => [email, password];

  SignInState copyWith({
    String? email,
    String? password,
    bool? complete,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      complete: complete ?? this.complete,
    );
  }
}
