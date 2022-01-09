import 'package:bloc_test/bloc_test.dart';
import 'package:dapp/signin/bloc/sign_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const email = 'samuelmauriciolaime@gmail.com';
  const password = '123456';
  // const name = 'Samuel Mauricio Laime';
  // const dni = '77777777';
  // const number = '923873749';

  group('SignInBloc', () {
    blocTest<SignInBloc, SignInState>(
      'emits [SignInState] with [email, password] '
      'when SignInSubmitted is added.',
      build: () => SignInBloc(),
      act: (bloc) {
        bloc.add(const SignInSubmitted(email: email, password: password));
      },
      expect: () => const <SignInState>[
        SignInState(
          email: email,
          password: password,
          complete: true,
        )
      ],
    );
  });
}
