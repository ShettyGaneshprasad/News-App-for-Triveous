import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:newsapp/newsfeed/newsfeed.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
            title: Text("News App"),
            bottom: menu(),
          ),
          body: TabBarView(
            children: [CNN(), GN(), NY(), FN()],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          child: Column(
            children: <Widget>[
              Flexible(
                  child: Text(
                "CNN",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
        Tab(
          child: Column(
            children: <Widget>[
              Flexible(
                  child: Text(
                "Google News",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
        Tab(
          child: Column(
            children: <Widget>[
              Flexible(
                  child: Text(
                "New York Post",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
        Tab(
          child: Column(
            children: <Widget>[
              Flexible(
                  child: Text(
                "Fox News",
                textAlign: TextAlign.center,
              )),
            ],
          ),
        ),
      ],
    );
  }
}
