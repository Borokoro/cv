import 'package:intl/intl.dart' show DateFormat;

class FormattedUtcDateTime extends DateTime {
  final DateFormat _dateFormat;

  FormattedUtcDateTime(String fmt, DateTime dateTime,
      {String? locale, int? hour, int? minute})
      : _dateFormat = DateFormat(fmt, locale),
        super.utc(
          dateTime.year,
          dateTime.month,
          dateTime.day,
          hour ?? dateTime.hour,
          minute ?? dateTime.minute,
          dateTime.second,
          dateTime.millisecond,
          dateTime.microsecond);

  @override
  String toIso8601String() {
    return _dateFormat.format(this);
  }

  @override
  String toString() {
    return _dateFormat.format(this);
  }
}