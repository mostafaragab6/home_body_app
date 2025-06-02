import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_body/features/home/data/models/get_trainers_response.dart';

import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit(this.coachData) : super(const BookingState.initial());

  Trainers? coachData;

  PageController pageController = PageController();
  int currentIndex = 0;

  void onPageChanged(int index) {
    emit(const BookingState.loading());

    currentIndex = index;
    print(currentIndex);
    emit(const BookingState.nextPage());
  }
}
