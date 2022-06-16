import 'package:bookflutter/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../models/data.dart';
import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

import 'new_users.dart';
class book_homepage extends StatefulWidget {

  @override
  State<book_homepage> createState() => _book_homepageState();
}

class _book_homepageState extends State<book_homepage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //app bar
    CollectionReference<Object?> bookscollection = getfirebaseCollection();
    ///create book tile hero
    createTile(Book book) => Material(
      elevation: 15.0,
      shadowColor: Colors.yellow.shade900,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'detail/${book.title}');
        },
        child: Image(
          image: AssetImage(book.image),
          fit: BoxFit.cover,
        ),
      ),
    );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: TextField(
            controller: textController,
            decoration: new InputDecoration(
                hintText: 'Please Enter Book name to see list of Books',

              suffixIcon: IconButton(
                onPressed: () => {
                  print("Hello"),
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdRoute()),
                )

              },
                icon: Icon(Icons.accessibility),


           //   suffixIcon: Icon(Icons.accessibility
              ),
            )
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: ()  {
          bookscollection.add({
            'name': textController.text
          }
          );
CreateUser(name: textController.text);
        },
      ),
      body: grid,
    );
  }

  CollectionReference<Object?> getfirebaseCollection() {
    CollectionReference books_collection =
    FirebaseFirestore.instance.collection('books');
    return books_collection;
  }

  void CreateUser({required String name}) async
  {
    // final json = {
    //   "name": name,
    //   "email": "john@example.com"
    // };

    final docuser = FirebaseFirestore.instance.collection('books').doc('CreatedbySanan');
    // final json = {
    //   "name": name,
    //   "email": "john@example.com"
    // };

    final user = User(name: name,  userID: '123', phone: '0332', email: 'hasan@gmail.com', username: 'khan');
    final json = user.toJson();
    await docuser.set(json);
  }
}






