// ignore_for_file: prefer_const_constructors

import 'package:profile/profile.dart';
import 'package:test/test.dart';

void main() {
  group('Profile', () {
    test('can be instantiated', () {
      expect(
        User(
          email: '',
          password: '',
          name: '',
          dni: '',
          number: '',
          address: '',
        ),
        isNotNull,
      );
    });
    test('Supports value equality', () {
      expect(
        User.empty(),
        User.empty(),
      );
    });
  });
}
