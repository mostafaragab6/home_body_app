import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/profile/data/models/get_profile_response.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo_imp.dart';

import '../../../login/data/models/add_profile_request.dart';
import '../../../login/data/repos/add_profile_repo_imp.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileRepoImp _getProfileRepoImp;
  final AddProfileRepoImp _addProfileRepoImp;
  ProfileCubit(this._getProfileRepoImp, this._addProfileRepoImp)
      : super(ProfileInitialState());

  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Future<void> getProfile() async {
    print('loading..');
    emit(GetProfileLoadingState());

    var response = await _getProfileRepoImp.getProfile();

    response.fold(
      (success) {
        print(success.fullName);
        emit(GetProfileSuccessState(success));
      },
      (failure) {
        print(failure.errMessage);
        emit(GetProfileErrorState(failure.errMessage));
      },
    );
  }

  void addProfile() async {
    emit(AddProfileLoadingState());

    var response = await _addProfileRepoImp.addProfile(
      AddProfileRequest(
        address: addressController.text,
        gender: genderController.text,
        height: double.parse(heightController.text),
        mobile: mobileController.text,
        name: nameController.text,
        weight: double.parse(weightController.text),
      ),
    );

    response.fold(
      (success) {
        print('Success');
        emit(AddProfileSuccessState());
      },
      (failure) {
        print(failure.errMessage);
        emit(AddProfileErrorState(failure.errMessage));
      },
    );
  }
}
