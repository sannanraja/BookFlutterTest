
import '../models/data.dart';
import 'details_books.dart';
import 'package:flutter/material.dart';
import '../uiscreens/home_books.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,

      ),

      home: book_homepage(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );

  }
  ///Generate parameterized route --> e.g: detail/some book title
  ///
  ///
  ///
  generateRoute(RouteSettings settings) {
    final path = settings.name?.split('/');
    final title = path![1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }

}
