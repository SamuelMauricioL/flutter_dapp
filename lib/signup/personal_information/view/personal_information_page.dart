import 'package:dapp/signup/bloc/sign_up_bloc.dart';
import 'package:dapp/signup/personal_information/cubit/personal_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz_inputs/formz_inputs.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({Key? key}) : super(key: key);

  static Page page() =>
      const MaterialPage<void>(child: PersonalInformationPage());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonalInformationCubit(),
      child: const PersonalInformationView(),
    );
  }
}

class PersonalInformationView extends StatelessWidget {
  const PersonalInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: _NameInput(),
        ),
      ),
      floatingActionButton: _SubmitButton(),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocSelector<PersonalInformationCubit, PersonalInformationState,
        NameFormInput>(
      selector: (state) => state.name,
      builder: (context, state) {
        return TextField(
          key: const Key('credentialsForm_nameInput_textField'),
          autocorrect: false,
          textCapitalization: TextCapitalization.words,
          onChanged: (name) {
            context.read<PersonalInformationCubit>().changeName(name);
          },
          decoration: InputDecoration(
            labelText: 'Nombre',
            errorText: state.invalid ? 'El nombre es corto' : null,
          ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocBuilder<PersonalInformationCubit, PersonalInformationState>(
      builder: (context, state) {
        if (state.status.isInvalid || state.status.isPure) {
          return const SizedBox.shrink();
        }

        return FloatingActionButton.extended(
          key: const Key('namePage_submitButton_floatingActionButton'),
          onPressed: () {
            final event =
                SignUpPersonalInformationSubmitted(name: state.name.value);
            context.read<SignUpBloc>().add(event);
          },
          label: const Text('Nombre'),
        );
      },
    );
  }
}
