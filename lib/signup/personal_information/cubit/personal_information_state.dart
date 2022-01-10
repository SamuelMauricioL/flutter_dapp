part of 'personal_information_cubit.dart';

class PersonalInformationState extends Equatable {
  const PersonalInformationState({
    this.name = const NameFormInput.pure(),
    this.status = FormzStatus.pure,
  });

  final NameFormInput name;
  final FormzStatus status;

  @override
  List<Object> get props => [name, status];

  PersonalInformationState copyWith({
    NameFormInput? name,
    FormzStatus? status,
  }) {
    return PersonalInformationState(
      name: name ?? this.name,
      status: status ?? this.status,
    );
  }
}
