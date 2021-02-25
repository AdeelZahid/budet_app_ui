import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100.0,
            forceElevated: true,
            // floating: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              iconSize: 30.0,
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Simple Budget'),
              centerTitle: true,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                iconSize: 30.0,
                color: Colors.white,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  height: 100.0,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6.0,
                        offset: Offset(0, 4),
                        color: Colors.black12,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
