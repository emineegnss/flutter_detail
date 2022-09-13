import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  TagWidget({
    Key? key,
    required this.icon,
    required this.date,
  }) : super(key: key);
  final String icon;
  String date = _dateTime.toString();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                date,
                style: const TextStyle(
                    fontFamily: "Quicksand", color: Color(0xff1C1C1C), fontSize: 10, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

DateTime _dateTime = DateTime.now();
Duration _duration = Duration();
