import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz_inputs/formz_inputs.dart';

part 'personal_information_state.dart';

class PersonalInformationCubit extends Cubit<PersonalInformationState> {
  PersonalInformationCubit() : super(const PersonalInformationState());

  void changeName(String value) {
    final name = NameFormInput.dirty(value);
    emit(
      state.copyWith(
        name: name,
        status: Formz.validate([name]),
      ),
    );
  }
}
