// ignore_for_file: prefer_const_constructors

import 'package:dapp/signin/bloc/sign_in_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const email = 'samuelmauriciolaime@gmail.com';
  const password = '123456';

  group('SignInEvent', () {
    group('SignInSubmitted', () {
      test('supports value comparison', () {
        expect(
          SignInSubmitted(email: email, password: password),
          SignInSubmitted(email: email, password: password),
        );
      });
    });
  });
}
