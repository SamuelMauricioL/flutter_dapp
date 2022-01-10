import 'package:dapp/signup/account_information/view/account_information_form.dart';
import 'package:dapp/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz_inputs/formz_inputs.dart';

class AccountInformationPage extends StatelessWidget {
  const AccountInformationPage({Key? key}) : super(key: key);

  static Page page() =>
      const MaterialPage<void>(child: AccountInformationPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AccountInformationCubit(),
      child: const AccountInformationView(),
    );
  }
}

class AccountInformationView extends StatelessWidget {
  const AccountInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: AccountInformationForm(),
        ),
      ),
      floatingActionButton: _SubmitButton(),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocBuilder<AccountInformationCubit, AccountInformationState>(
      builder: (context, state) {
        if (state.status.isInvalid || state.status.isPure) {
          return const SizedBox.shrink();
        }

        return FloatingActionButton.extended(
          key: const Key(
            'accoungtInformationPage_submitButton_floatingActionButton',
          ),
          onPressed: () {
            final event = SignUpAccountInformationSubmitted(
              email: state.email.value,
              password: state.password.value,
            );
            context.read<SignUpBloc>().add(event);
          },
          label: const Text('Completo'),
        );
      },
    );
  }
}
