import 'package:formz/formz.dart';

/// Validation error for Password [FormzInput]
enum PasswordValidationError {
  /// Password is invalid (generic validation error)
  invalid
}

/// {@template pin_form_input}
/// Password form input.
/// {@endtemplate}
///
class PasswordFormInput extends FormzInput<String, PasswordValidationError> {
  /// {@macro password_form_input}
  const PasswordFormInput.pure() : super.pure('');

  /// {@macro password_form_input}
  const PasswordFormInput.dirty([String value = '']) : super.dirty(value);

  /// {@template max_length}
  /// Maximum length the password requires to be valid.
  /// {@endtemplate}
  static int get maxLength {
    if (_maxLength == null) {
      assert(
        () {
          _maxLength = 6;
          return true;
        }(),
        'Maximum length the password requires to be valid.',
      );
    }
    return _maxLength ??= 4;
  }

  /// {@macro max_length}
  static set maxLength(int value) => _maxLength = value;

  static int? _maxLength;

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty || value.length != maxLength) {
      return PasswordValidationError.invalid;
    }
  }
}
