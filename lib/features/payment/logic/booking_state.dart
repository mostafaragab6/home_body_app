import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@Freezed()
class BookingState<T> with _$BookingState<T> {
  const factory BookingState.initial() = _Initial;

  const factory BookingState.loading() = Loading;

  const factory BookingState.nextPage() = NextPage;
}
