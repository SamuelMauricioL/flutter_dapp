import 'package:dapp/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz_inputs/formz_inputs.dart';

class AccountInformationForm extends StatelessWidget {
  const AccountInformationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        _EmailInput(),
        _PasswordInput(),
      ],
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocSelector<AccountInformationCubit, AccountInformationState,
        EmailFormInput>(
      selector: (state) => state.email,
      builder: (context, state) {
        return TextField(
          key: const Key('credentialsForm_emailInput_textField'),
          autocorrect: false,
          textCapitalization: TextCapitalization.words,
          onChanged: (email) {
            context.read<AccountInformationCubit>().changeEmail(email);
          },
          decoration: InputDecoration(
            labelText: 'Email',
            errorText: state.invalid ? 'El email es invalido' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocSelector<AccountInformationCubit, AccountInformationState,
        PasswordFormInput>(
      selector: (state) => state.password,
      builder: (context, state) {
        return TextField(
          key: const Key('credentialsForm_passwordInput_textField'),
          autocorrect: false,
          textCapitalization: TextCapitalization.words,
          onChanged: (password) {
            context.read<AccountInformationCubit>().changePassword(password);
          },
          decoration: InputDecoration(
            labelText: 'Contraseña',
            errorText: state.invalid ? 'La contraseña es muy corta' : null,
          ),
        );
      },
    );
  }
}
