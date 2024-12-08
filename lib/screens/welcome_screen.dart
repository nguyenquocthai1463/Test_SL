import 'package:flutter/material.dart';
import 'package:tasksl/screens/signup_page.dart';
import 'package:tasksl/utils/config-color.dart';
import '../utils/config-text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeAppState();
}

class _WelcomeAppState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: StyleConfigColor.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: StyleConfigColor.background,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(135),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    color: StyleConfigColor.background,
                    child: TabBar(
                      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                      labelColor: StyleConfigColor.primary,
                      indicatorWeight: 3,
                      indicatorColor: StyleConfigColor.primary,
                      unselectedLabelColor: StyleConfigColor.gray,
                      tabs: [
                        Tab(
                          child: Container(
                            width: 170,
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
                              style: StyleConfigText.title4,
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 170,
                            alignment: Alignment.center,
                            child: Text(
                              'Sign up',
                              style: StyleConfigText.title4,
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
        ),
        body: TabBarView(
          //controller: _tabController, // Gán controller cho TabBarView
          children: <Widget>[
            Center(
                child: Text('Sign Up Page',
                    style: StyleConfigText.bodyTextSemiBold3)),
            const Center(child: SignupPage()),
          ],
        ),
      ),
    );
  }
}
