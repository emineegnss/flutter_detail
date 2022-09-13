import 'package:intl/intl.dart';

extension DateTimeConvert on DateTime {
  String get formatDay {
    final now = DateTime.now();
    if (now.year == year && now.month == month && now.day == day) {
      return "Today";
    } else if (now.year == year && now.month == month && now.day == day + 1) {
      return "Yesterday";
    } else {
      return DateFormat.yMMMd().format(this);
    }
  }

  String get formatHour {
    return DateFormat("h:mm a").format(this);
  }
}

extension Durationx on Duration {
  String get formatTime {
    int seconds = inSeconds;
    final hours = (seconds / 3600).floor();
    seconds -= hours * 3600;
    final minutes = (seconds / 60).floor();
    seconds -= minutes * 60;
    if (hours == 0 && minutes == 0) return "$seconds sec";
    if (hours == 0 && seconds == 0) return "$minutes min";
    if (minutes == 0 && seconds == 0) return "$hours hour";

    if (hours == 0) return "$minutes min $seconds sec";
    if (minutes == 0) return "$hours hour $seconds sec";
    return "$hours hour $minutes min $seconds sec";
  }
}

class Date {
  String time(Duration _duration) {
    int seconds = _duration.inSeconds;
    final hours = (seconds / 3600).floor();
    seconds -= hours * 3600;
    final minutes = (seconds / 60).floor();
    seconds -= minutes * 60;
    if (hours == 0 && minutes == 0) return "$seconds sec";
    if (hours == 0 && seconds == 0) return "$minutes min";
    if (minutes == 0 && seconds == 0) return "$hours hour";

    if (hours == 0) return "$minutes min $seconds sec";
    if (minutes == 0) return "$hours hour $seconds sec";
    return "$hours hour $minutes min $seconds sec";
  }

  String _hour(DateTime _date) {
    return _date.hour.toString().padLeft(2, "0") + ":" + _date.minute.toString().padLeft(2, "0");
  }

  String hour(DateTime _date) {
    return DateFormat("h:mm a").format(_date);
  }

  String day(DateTime date_) {
    final now = DateTime.now();
    if (now.year == date_.year && now.month == date_.month && now.day == date_.day) {
      return "Today";
    } else if (now.year == date_.year && now.month == date_.month && now.day == date_.day + 1) {
      return "Yesterday";
    } else {
      return DateFormat.yMMMd().format(date_);
    }
  }
}
