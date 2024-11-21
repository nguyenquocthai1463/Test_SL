import 'package:flutter/material.dart';
import 'package:test_sl/utils/config-color.dart';

class welcomeApp extends StatefulWidget {
  const welcomeApp({super.key});

  @override
  State<welcomeApp> createState() => _welcomeAppState();
}

class _welcomeAppState extends State<welcomeApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black87,
          scrolledUnderElevation: 7,
          elevation: 7,
          title: const Text('Benefits',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          bottom: TabBar(
            indicatorColor: Color.fromRGBO(25, 110, 130, 1),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(25, 110, 130, 1),
                  width: 5,
                ),
              ),
            ),
            labelPadding: EdgeInsets.all(0),
            labelColor: Colors.black,
            labelStyle: StyleConfig.textTitle,
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 13,
            ),
            tabs: [
              Tab(
                text: 'Login',
              ),
              Tab(
                text: 'Sign up',
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const TabBarView(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}