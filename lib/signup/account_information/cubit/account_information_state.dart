part of 'account_information_cubit.dart';

class AccountInformationState extends Equatable {
  const AccountInformationState({
    this.email = const EmailFormInput.pure(),
    this.password = const PasswordFormInput.pure(),
    this.status = FormzStatus.pure,
  });

  final EmailFormInput email;
  final PasswordFormInput password;
  final FormzStatus status;

  @override
  List<Object> get props => [email, password, status];

  AccountInformationState copyWith({
    EmailFormInput? email,
    PasswordFormInput? password,
    FormzStatus? status,
  }) {
    return AccountInformationState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}
