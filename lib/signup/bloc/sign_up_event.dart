part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class SignUpPersonalInformationSubmitted extends SignUpEvent {
  const SignUpPersonalInformationSubmitted({
    required this.name,
  });

  final String name;

  @override
  List<Object> get props => [name];
}

class SignUpAccountInformationSubmitted extends SignUpEvent {
  const SignUpAccountInformationSubmitted({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}
