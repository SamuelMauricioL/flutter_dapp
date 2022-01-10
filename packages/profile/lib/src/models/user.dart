import 'package:equatable/equatable.dart';

/// {@template user}
/// User model.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.email,
    required this.password,
    required this.name,
    required this.dni,
    required this.number,
    required this.address,
  });

  // ignore: lines_longer_than_80_chars
  /// Returns a `User` object with default properties.
  const User.empty()
      : this(
          email: '',
          password: '',
          name: '',
          dni: '',
          number: '',
          address: '',
        );

  /// The user's email address.
  final String email;

  /// The user's password.
  final String password;

  /// The user's name.
  final String name;

  /// The user's dni.
  final String dni;

  /// The user's number.
  final String number;

  /// The user's number.
  final String address;

  @override
  List<Object> get props => [email, password, name, dni, number, address];
}
