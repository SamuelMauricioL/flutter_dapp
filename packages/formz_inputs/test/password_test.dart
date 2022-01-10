// ignore_for_file: prefer_const_constructors

import 'package:formz_inputs/formz_inputs.dart';
import 'package:formz_inputs/src/password.dart';
import 'package:test/test.dart';

void main() {
  const passwordString = '123456';
  group('PasswordFormInput', () {
    group('constructors', () {
      test('pure creates correct instance', () {
        final password = PasswordFormInput.pure();
        expect(password.value, '');
        expect(password.pure, true);
      });

      test('dirty creates correct instance', () {
        final password = PasswordFormInput.dirty(passwordString);
        expect(password.value, passwordString);
        expect(password.pure, false);
      });
    });

    group('validator', () {
      test('returns empty error when password is empty', () {
        expect(
          PasswordFormInput.dirty().error,
          PasswordValidationError.invalid,
        );
      });

      test('returns to long error when password is longer than default 6 chars',
          () {
        expect(
          PasswordFormInput.dirty('${passwordString}789').error,
          PasswordValidationError.invalid,
        );
      });

      test('is valid when passsword is valid', () {
        expect(PasswordFormInput.dirty(passwordString).error, isNull);
      });
    });

    group('maxLength', () {
      test('sets new value correcty', () {
        const newMaxLength = 6;
        PasswordFormInput.maxLength = newMaxLength;
        expect(PasswordFormInput.maxLength, newMaxLength);
      });
    });
  });
}
