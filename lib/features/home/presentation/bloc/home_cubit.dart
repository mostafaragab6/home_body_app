import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';
import 'package:home_body/features/home/data/repos/tags/tags_repo_imp.dart';

import '../../data/models/plans_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final TagsRepoImp _tagsRepoImp;
  HomeCubit(
    this._tagsRepoImp,
  ) : super(const HomeState.initial());

  PageController pageController = PageController();
  TextEditingController numberOfSessionsController = TextEditingController();
  TextEditingController cityController =
      TextEditingController(text: 'El-Riyad');
  TextEditingController countryController =
      TextEditingController(text: 'Saudi');
  String selectedDate = '';
  // GetProfileResponse? getProfileResponse;

  List<int> tagsId = [];
  Trainers? profile = Trainers.fromJson({});

  void getTags() async {
    emit(const HomeState.getTagsLoading());

    var response = await _tagsRepoImp.getTags();
    response.fold(
      (success) {
        emit(HomeState.getTagsSuccess(success));
      },
      (failure) {
        emit(HomeState.getTagsError(failure.errMessage));
      },
    );
  }

  void changePlan(PlansData plansData) {
    plansData.isSelected = !plansData.isSelected!;
    emit(const HomeState.changePlanSuccess());
  }

  void showOthersNumbers() {
    emit(const HomeState.showOtherNumbers());
  }

  void removeOthersNumbers() {
    emit(const HomeState.removeOtherNumbers());
  }
}
