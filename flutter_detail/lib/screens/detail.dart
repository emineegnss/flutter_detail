import 'package:flutter/material.dart';

import 'package:flutter_detail/const.dart';
import 'package:flutter_detail/date_time.dart';
import 'package:flutter_detail/models/user_model.dart';
import 'package:flutter_detail/widgets/star_widget.dart';
import 'package:flutter_detail/widgets/tag_widget.dart';
import 'package:flutter_detail/widgets/user_container.dart';
import 'package:intl/intl.dart';

import '../metods.dart';

class Detail extends StatelessWidget {
  Detail({
    Key? key,
    UserModel? user,
  })  : user = user ?? Const.users.first,
        super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left,
          color: Color(0xff787878),
        ),
        title: const Text(
          "Detail",
          style: TextStyle(color: Color(0xff787878)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.ios_share,
              color: Color(0xff787878),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => await Future.delayed(const Duration(seconds: 1)),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 36, left: 20, right: 20),
          children: [
            SizedBox(
              height: 206,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  user.cover,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              alignment: Alignment.center,
              height: 90,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: ListTile(
                leading: SizedBox(
                  width: 75,
                  height: 75,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      user.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontFamily: "Quicksand",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    StarWidget(
                      total: 5,
                      rate: user.rate,
                    ),
                  ],
                ),
                subtitle: Text(
                  user.description,
                  style: const TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Consultant Headline",
              style: textStil(FontWeight.w700, Colors.white, 21),
            ),
            const SizedBox(height: 12),
            Text(user.text, style: textStil(FontWeight.w400, const Color(0xff787878), 17)),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: TagWidget(icon: "🗓️", date: user.date.formatDay)),
                SizedBox(width: 8),
                Flexible(child: TagWidget(icon: "🕝", date: user.duration.formatTime)),
                SizedBox(width: 8),
                Flexible(child: TagWidget(icon: "🕝", date: user.date.formatHour)),
              ],
            ),
            const SizedBox(height: 12),
            Text("Smilar Consultans", style: textStil(FontWeight.w700, Colors.white, 21)),
            const SizedBox(height: 12),
            Column(
              children: Const.users
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: UserContainer(user: e),
                      ))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 52),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Register"),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(350, 56),
                    primary: const Color(0xff8B02FF),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28)))),
              ),
            )
          ],
        ),
      ),
    );
  }

  String time(Duration _duration) {
    int seconds = user.duration.inSeconds;
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
