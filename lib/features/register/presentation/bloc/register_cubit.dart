import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/register/data/models/register_request.dart';
import 'package:home_body/features/register/data/repos/register_repo_imp.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepoImp _registerRepoImp;
  RegisterCubit(this._registerRepoImp) : super(RegisterState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  bool isObscuredPass = true;
  bool isObscuredConfirmPass = true;

  var formKey = GlobalKey<FormState>();

  void register() async {
    emit(RegisterState.loading());

    final response = await _registerRepoImp.register(
      RegisterRequest(
        password: passwordController.text,
        userName: userNameController.text,
        email: emailController.text,
      ),
    );

    response.fold(
      (failure) {
        print(failure.errMessage);
        emit(RegisterState.error(failure.errMessage));
      },
      (success) async {
        print(success.message);
        emit(RegisterState.success(success));
      },
    );
  }
}
