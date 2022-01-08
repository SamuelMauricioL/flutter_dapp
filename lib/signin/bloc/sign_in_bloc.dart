import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<SignInEvent>((event, emit) {
      on<SignInSubmitted>(_onSubmitted);
    });
  }

  void _onSubmitted(SignInSubmitted event, Emitter emit) {
    emit(
      state.copyWith(
        email: event.email,
        password: event.password,
      ),
    );
  }
}
