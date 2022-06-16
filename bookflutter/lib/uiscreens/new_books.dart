import 'package:bookflutter/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../models/data.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  List userProfilesList = [];
  final textControllerone = TextEditingController();

  final textControllertwo = TextEditingController();

  final textControllerthree = TextEditingController();

  final textControllerfour = TextEditingController();

  final textControllerfive = TextEditingController();
  final textControllersix = TextEditingController();

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
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            // bookscollection.add({
            //   'name': textController.text
            //
            //
            // }
            // );
            CreateUser(
                name: textControllerone.text,
                title: textControllertwo.text,
                address: textControllerthree.text,
                price: textControllerfour.text,
                description: textControllerfive.text);
          },
        ),
        // body: Center(
        //
        // ),

        body: Column(
          children: [
            Container(
              color: Colors.orange,
              child: TextField(
                controller: textControllerone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a name term',
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: TextField(
                controller: textControllertwo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a title term',
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: TextField(
                controller: textControllerthree,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a address term',
                ),
              ),
            ),
            Container(
              color: Colors.teal,
              child: TextField(
                controller: textControllerfour,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a price term',
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              child: TextField(
                controller: textControllerfive,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a description term',
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: SingleChildScrollView(
                  child: StreamBuilder(
                      stream: bookscollection.orderBy('name').snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        return ListView(
                          children: snapshot.data!.docs.map((books) {
                            return Column(
                              children: [
                                Center(
                                  child: ListTile(
                                    title: Text(books['name']),
                                    onLongPress: () {
                                      books.reference.delete();
                                    },
                                  ),
                                ),
                              ],
                            );
                          }).toList(growable: true),
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }

  CollectionReference<Object?> getfirebaseCollection() {
    CollectionReference books_collection =
        FirebaseFirestore.instance.collection('books');
    return books_collection;
  }

  void CreateUser(
      {required String name,
      required String title,
      required String address,
      required String price,
      required String description}) async {
    // final json = {
    //   "name": name,
    //   "email": "john@example.com"
    // };
    final docuser = FirebaseFirestore.instance.collection('books').doc();
    // final json = {
    //   "name": name,
    //   "email": "john@example.com"
    // };

    final user = User(
        name: name,
        userID: title,
        phone: address,
        email: price,
        username: description);

    final json = user.toJson();

    await docuser.set(json);
  }

  Future getUsersList() async {
    List itemsList = [];
    final CollectionReference booksList =
        FirebaseFirestore.instance.collection('books');

    try {
      await booksList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  void initState() {
    super.initState();

    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = getUsersList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  // User getUsers({required User user}) {
  //
  //
  //   return user;
  // }
}
