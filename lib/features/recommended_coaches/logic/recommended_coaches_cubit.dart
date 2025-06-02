import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/recommended_coaches/data/repos/get_trainers_repo_imp.dart';

import '../../home/data/models/get_trainers_request.dart';
import 'recommended_coaches_state.dart';

class RecommendedCoachesCubit extends Cubit<RecommendedCoachesState> {
  final GetTrainersRepoImp getTrainersRepoImp;
  RecommendedCoachesCubit({
    this.city,
    this.country,
    this.tags,
    required this.getTrainersRepoImp,
  }) : super(const RecommendedCoachesState.initial()) {
    getTrainersRequest = GetTrainersRequest(
      city ?? 'Aswan',
      country ?? 'Egypt',
      tags ?? [1],
    );
  }
  final Set<String> selectedOptions = {};
  String selectedValue = '';
  String? city;
  String? country;
  List<int>? tags;
  late GetTrainersRequest getTrainersRequest;

  void getTrainers() async {
    print('a7a');
    emit(const RecommendedCoachesState.getTrainersLoading());

    var response = await getTrainersRepoImp.getTrainers(getTrainersRequest);
    response.fold(
      (success) {
        print(success.trainers?[0]?.city);
        emit(RecommendedCoachesState.getTrainersSuccess(success));
      },
      (failure) {
        print(failure.errMessage);
        emit(RecommendedCoachesState.getTrainersError(failure.errMessage));
      },
    );
  }

  void buttomSheetIsOpen(bool isOpen) {
    if (isOpen) {
      emit(const RecommendedCoachesState.success('opened'));
    } else {
      emit(const RecommendedCoachesState.error('closed'));
    }
  }
}
