import 'package:flutter/material.dart';

import '../ui/widgets/booking_info/booking_info.dart';
import '../ui/widgets/payment_info/payment_info.dart';
import '../ui/widgets/personal_info/personal_info.dart';

class BookingConstants {
  static List<Widget> pageViewScreens = [
    const BookingInfo(),
    PersonalInfo(),
    PaymentInfo(),
  ];
}
