import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Tabs Page'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.accessibility_new)),
              Tab(icon: Icon(Icons.mail)),
              Tab(icon: Icon(Icons.map)),
              Tab(icon: Icon(Icons.access_alarm)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.accessibility_new, size: 150),
            Icon(Icons.mail, size: 150),
            Icon(Icons.map, size: 150),
            Icon(Icons.access_alarm, size: 150),
          ],
        ),
      ),
    );
  }
}