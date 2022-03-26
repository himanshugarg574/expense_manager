import 'package:intl/intl.dart';

extension DateTimeUtils on DateTime {

  String format(DateFormat? fmt) {
    fmt ??= DateFormat("dM");
    return fmt.format(this);
  }

  DateTime getFirstDateOfWeek() {
    return subtract(Duration(days: weekday - 1));
  }

  DateTime getLastDateOfWeek() {
    return add(Duration(days: DateTime.daysPerWeek - weekday));
  }

  // DateTime getFirstDateOfMonth() {
  //
  // }

}