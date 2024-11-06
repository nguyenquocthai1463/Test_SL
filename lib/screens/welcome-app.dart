import 'package:flutter/material.dart';
import 'package:test_sl/utils/config-color.dart';
import '../utils/config-text.dart';

class WelcomeApp extends StatefulWidget {
  const WelcomeApp({super.key});

  @override
  State<WelcomeApp> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Change this from 3 to 2
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Scaffold(
          backgroundColor: StyleConfigColor.background,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: StyleConfigColor.background,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(135),
              child: Column(
                children: [
                  Container(
                    color: StyleConfigColor.background,
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                      labelColor: StyleConfigColor.primary,
                      indicatorWeight: 3,
                      indicatorColor: StyleConfigColor.primary,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          child: Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
                              style: StyleConfigText.title5,
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'Sign up',
                              style: StyleConfigText.title5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('Login Page', style: StyleConfigText.title1)),
              const Center(child: Text('Sign Up Page',style: TextStyle(
                fontFamily: 'Manrope-Black',
                  fontSize: 24
              ),)),
            ],
          ),
        ),
      ),
    );
  }
}

