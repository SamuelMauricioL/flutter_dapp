import 'package:bloc_test/bloc_test.dart';
import 'package:dapp/app/app.dart';
import 'package:mocktail/mocktail.dart';
import 'package:profile/profile.dart';

/// * Mocks

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockUser extends Mock implements User {}
