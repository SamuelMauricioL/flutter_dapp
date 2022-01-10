import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz_inputs/formz_inputs.dart';

part 'account_information_state.dart';

class AccountInformationCubit extends Cubit<AccountInformationState> {
  AccountInformationCubit() : super(const AccountInformationState());

  void changeEmail(String value) {
    final email = EmailFormInput.dirty(value);
    emit(
      state.copyWith(
        email: email,
        password: state.password,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void changePassword(String value) {
    final password = PasswordFormInput.dirty(value);
    emit(
      state.copyWith(
        email: state.email,
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }
}
