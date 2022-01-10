import 'package:dapp/app/app.dart';
import 'package:dapp/profile/profile.dart';
import 'package:dapp/signin/view/signin_page.dart';
import 'package:dapp/signup/view/signup_page.dart';
import 'package:flutter/widgets.dart';

List<Page> onGenerateAppViewPages(AppState state, List<Page> pages) {
  if (state is AppAuthenticated) {
    return [ProfilePage.page(state.user)];
  } else if (state is AppSignUpRequested) {
    return [SignUpPage.page()];
  } else {
    return [SignInPage.page()];
  }
}
