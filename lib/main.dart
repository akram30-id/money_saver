import 'package:flutter/material.dart';
import 'package:money_saver/ui/account.dart';
import 'package:money_saver/ui/home.dart';
import 'package:money_saver/ui/savings.dart';
import 'package:money_saver/ui/user_flow/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.yellow[50],
        body: TabBarView(children: [
          Home(),
          Savings(),
          Account(),
        ]),
        bottomNavigationBar: TabBar(
          labelColor: Colors.orange[900],
          unselectedLabelColor: Colors.orange,
          controller: tabController,
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(style: BorderStyle.none)),
          tabs: [
            Tab(
              icon: Icon(Icons.home_filled, size: 30,),
            ),
            Tab(
              icon: Icon(Icons.attach_money_rounded, size: 30),
            ),
            Tab(
              icon: Icon(Icons.account_circle_rounded, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
