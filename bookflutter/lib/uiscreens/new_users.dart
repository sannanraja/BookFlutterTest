import 'package:bookflutter/models/user.dart';
import 'package:bookflutter/models/user_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/strings.dart';

class ThirdRoute extends StatefulWidget {
  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  UserInfo userInfo =
      UserInfo(123, 234, 'Sannan', 'Raja', 'Sannan', 'Islamic Books');
  UserInfo userInfoone =
  UserInfo(123, 234, 'Sannan', 'Raja', 'Amjad', 'Islamic Books');
  UserInfo userInfotwo =
  UserInfo(123, 234, 'Sannan', 'Raja', 'Malik', 'Islamic Books');
  UserInfo userInfothree =
  UserInfo(124343433, 234, 'Sannan', 'Jameel', 'Sannan', 'Islamic Books');
  UserInfo userInfofour =
  UserInfo(7766, 234, 'Kamil', 'Raja', 'Uzair', 'Physics Books');
  UserInfo userInfofive =
  UserInfo(15455423, 234, 'Hussan', 'Khan', 'John', 'Autocad Books');
  UserInfo userInfosix =
  UserInfo(12332323, 234, 'Sannan', 'Raja', 'Smith', 'Chemistry Books');
  UserInfo userInfoseven =
  UserInfo(7765657, 234, 'Sannan', 'Raja', 'James', 'English Books');
  UserInfo userInfoeight =
  UserInfo(12332233, 234, 'Sannan', 'Raja', 'Mark', 'Urdu Books');
  UserInfo userInfonine =
  UserInfo(6645645, 234, 'Sannan', 'Raja', 'Tom', 'Islamic Books');

  User user_model = User(
      name: "Sanan",
      userID: '12663773',
      phone: '544332',
      email: 'sannan@gmail.com',
      username: 'man');
  User user_modelone = User(
      name: "James Matt",
      userID: '12632323773',
      phone: '0332544332',
      email: 'sannan@gmail.com',
      username: 'tweetinigin');
  User user_modeltwo = User(
      name: "Junaid",
      userID: '12663773',
      phone: '0332544332',
      email: 'hasan@gmail.com',
      username: 'man');
  User user_modeltree = User(
      name: "Hussain",
      userID: '12663773',
      phone: '544332',
      email: 'sannan@gmail.com',
      username: 'khansoul');
  User user_modelfour = User(
      name: "Tanveer",
      userID: '12663773',
      phone: '544332',
      email: 'sannan@gmail.com',
      username: 'pirachkhn');

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
            child: Column(
              children: <Widget>[
                ExpansionTile(
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
                      title: Text(user_model.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfoone.firstName + " " + userInfoone.lastName),
                  children: [
                    ListTile(
                      title: const Text(Strings.jobTitle),
                      subtitle: Text(user_modelone.name),
                    ),
                    ListTile(
                      title: Text(user_modelone.email),
                      subtitle: Text(userInfo.age.toString()),
                    ),
                    ListTile(
                      title: Text(user_modelone.userID),
                      subtitle: Text(userInfo.address),
                    ),
                    ListTile(
                      title: Text(user_modelone.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfotwo.firstName + " " + userInfotwo.lastName),
                  children: [
                    ListTile(
                      title: const Text(Strings.jobTitle),
                      subtitle: Text(user_modeltwo.name),
                    ),
                    ListTile(
                      title: Text(user_modeltwo.email),
                      subtitle: Text(userInfo.age.toString()),
                    ),
                    ListTile(
                      title: Text(user_modeltwo.userID),
                      subtitle: Text(userInfo.address),
                    ),
                    ListTile(
                      title: Text(user_modeltwo.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfothree.firstName + " " + userInfothree.lastName),
                  children: [
                    ListTile(
                      title: const Text(Strings.jobTitle),
                      subtitle: Text(user_modeltree.name),
                    ),
                    ListTile(
                      title: Text(user_modeltree.email),
                      subtitle: Text(userInfo.age.toString()),
                    ),
                    ListTile(
                      title: Text(user_modeltree.userID),
                      subtitle: Text(userInfo.address),
                    ),
                    ListTile(
                      title: Text(user_modeltree.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfofour.firstName + " " + userInfofour.lastName),
                  children: [
                    ListTile(
                      title: const Text(Strings.jobTitle),
                      subtitle: Text(user_modelfour.name),
                    ),
                    ListTile(
                      title: Text(user_modelfour.email),
                      subtitle: Text(userInfo.age.toString()),
                    ),
                    ListTile(
                      title: Text(user_modelfour.userID),
                      subtitle: Text(userInfo.address),
                    ),
                    ListTile(
                      title: Text(user_modelfour.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfofive.firstName + " " + userInfofive.lastName),
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
                      title: Text(user_model.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfosix.firstName + " " + userInfosix.lastName),
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
                      title: Text(user_model.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(userInfoseven.firstName + " " + userInfoseven.lastName),
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
                      title: Text(user_model.username),
                      subtitle: Text(userInfo.fullName),
                    )
                  ],
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
