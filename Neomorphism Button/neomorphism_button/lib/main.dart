import 'package:flutter/material.dart';

import './lightmode.dart';
import './darkmode.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabsScreen(),
    );
  }
}

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 34, 34, 34),
            centerTitle: true,
            title: const Text("Neomorphism Button"),
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey[500],
              unselectedLabelStyle: const TextStyle(fontSize: 13),
              tabs: const <Widget>[
                Tab(icon: Icon(Icons.light), text: "Light Mode"),
                Tab(icon: Icon(Icons.dark_mode), text: "Dark Mode")
              ],
            ),
          ),
          body:  const TabBarView(
            children: [
              LightMode(),
              DarkMode(),
            ],
          ),
        ),
      ),
    );
  }
}



