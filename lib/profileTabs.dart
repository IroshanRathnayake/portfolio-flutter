import 'package:flutter/material.dart';

Widget portfolioTabs() {
  return const DefaultTabController(
    length: 3,
    child: Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.black,
          tabs: [
            Tab(text: 'Experience'),
            Tab(text: 'Education'),
            Tab(text: 'Projects'),
          ],
        ),
        SizedBox(
          height: 200,
          child: TabBarView(
            children: [
              Center(child: Text('Experience Content')),
              Center(child: Text('Education Content')),
              Center(child: Text('Projects Content')),
            ],
          ),
        ),
      ],
    ),
  );
}
