import 'package:bookflutter/models/user.dart';
import 'package:bookflutter/models/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/strings.dart';

class FourthRoute extends StatefulWidget {
  @override
  State<FourthRoute> createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  UserInfo userInfo = UserInfo(123,234, 'Sannan', 'Raja', 'Sannan', 'Islamic Books');
  User user_model = User(name: "Sanann", userID: '12663773', phone: '544332', email: 'sannan@gmail.com', username: 'man');

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              title: Text(userInfo.firstName + " " + userInfo.lastName),
              children: [
                ListTile(
                  title: const Text(Strings.jobTitle),
                  subtitle: Text(user_model.name),
                ),
                ListTile(
                  title: Text(user_model.email),
                  subtitle: Text(userInfo.age.toString()),
                ),
                ListTile(
                  title: Text(user_model.userID),
                  subtitle: Text(userInfo.address),
                ),
                ListTile(
                  title:  Text(user_model.username),
                  subtitle: Text(userInfo.fullName),
                )
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            side: BorderSide(color: Colors.black26),
          ),
        ),
      ),
    );
  }
}
