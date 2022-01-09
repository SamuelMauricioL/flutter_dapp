import 'package:dapp/signin/bloc/sign_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const email = 'samuelmauriciolaime@gmail.com';
  const password = '123456';
  group('SignInState', () {
    test('supports value comparisons', () {
      expect(const SignInState(), const SignInState());
    });

    test('return same object when no properties are passed', () {
      expect(const SignInState().copyWith(), const SignInState());
    });

    test('return object with updatesd states when states is passed', () {
      expect(
        const SignInState()
            .copyWith(email: email, password: password, complete: true),
        const SignInState(email: email, password: password, complete: true),
      );
    });
  });
}
