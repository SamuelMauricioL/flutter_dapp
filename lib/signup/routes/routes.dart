import 'package:dapp/signup/signup.dart';
import 'package:flutter/widgets.dart';

List<Page> onGenerateSignUpPages(SignUpState state, List<Page> pages) {
  if (state.user.name.isEmpty &&
      state.user.dni.isEmpty &&
      state.user.number.isEmpty &&
      state.user.address.isEmpty) {
    return [PersonalInformationPage.page()];
  } else {
    return [AccountInformationPage.page()];
  }
}
