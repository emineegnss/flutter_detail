import 'package:flutter/material.dart';

import 'package:flutter_detail/metods.dart';
import 'package:flutter_detail/models/user_model.dart';
import 'package:flutter_detail/screens/detail.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(user: user))),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xff787878),
            ),
            borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: SizedBox(
            width: 75,
            height: 65,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                user.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            user.name,
            style: const TextStyle(
                fontFamily: "Quicksand", fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            user.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: textStil(FontWeight.w400, const Color(0xff787878), 13),
          ),
        ),
      ),
    );
  }
}
