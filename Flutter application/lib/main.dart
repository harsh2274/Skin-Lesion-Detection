import 'package:flutter/material.dart';
import 'imageTab.dart';
import 'profileTab.dart';
import 'historyTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HCI Project',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'SkinSense')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title,style: TextStyle(color: Colors.white),),
          ),
          body: Center(
            child: Column(
          children: [
            TabBar(
                tabs: [
                  Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.cyan,
                  ),
                ),
                  Tab(
                    icon: Icon(
                      Icons.history_edu,
                      color: Colors.cyan,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.cyan,
                    ),
                  )
              ],
            ),
            Expanded(
                child: TabBarView(
                    children: [
                      Imagetab(),
                      Historytab(),
                      Profiletab(),
                    ]
                )
              )
            ]
          ),
        ),
      )
    );
  }
}


