import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/core/helpers/shared_prefs_helper.dart';
import 'package:home_body/core/shared/shared_pref_keys.dart';
import 'package:home_body/features/login/data/models/login_request.dart';
import 'package:home_body/features/login/data/repos/login_repo_imp.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImp _loginRepoImp;
  LoginCubit(this._loginRepoImp) : super(LoginState.initial());

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscured = true;
  var formKey = GlobalKey<FormState>();

  void login() async {
    emit(LoginState.loading());

    final response = await _loginRepoImp.login(
      LoginRequest(
          password: passwordController.text, userName: userNameController.text),
    );

    response.fold(
      (failure) {
        emit(LoginState.error(failure.errMessage));
      },
      (success) async {
        await SharedPrefHelper.setSecuredString(
            SharedPrefKeys.accessToken, success.data?.accessToken ?? '');
        await SharedPrefHelper.setSecuredString(
            SharedPrefKeys.refreshToken, success.data?.refreshToken ?? '');
        print(success.data?.accessToken);
        emit(LoginState.success(success));
      },
    );
  }
}
