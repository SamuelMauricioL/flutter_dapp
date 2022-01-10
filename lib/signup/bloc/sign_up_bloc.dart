import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:profile/profile.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpPersonalInformationSubmitted>(_onPersonalInformationSubmitted);
    on<SignUpAccountInformationSubmitted>(_onAccountInformationSubmitted);
  }

  void _onPersonalInformationSubmitted(
    SignUpPersonalInformationSubmitted event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          name: event.name,
          address: state.user.address,
          dni: state.user.address,
          number: state.user.number,
          email: state.user.email,
          password: state.user.password,
        ),
      ),
    );
  }

  void _onAccountInformationSubmitted(
    SignUpAccountInformationSubmitted event,
    Emitter emit,
  ) {
    emit(
      state.copyWith(
        user: User(
          name: state.user.name,
          address: state.user.address,
          dni: state.user.address,
          number: state.user.number,
          email: event.email,
          password: event.password,
        ),
      ),
    );
  }
}
