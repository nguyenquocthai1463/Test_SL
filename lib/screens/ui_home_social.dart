import 'package:flutter/material.dart';
import 'package:tasksl/widgets/appbar_social.dart';
import 'package:tasksl/widgets/comment.dart';
import 'package:tasksl/widgets/post.dart';
import 'package:tasksl/widgets/bottomBar_social.dart';

class UiHomeSocial extends StatefulWidget {
  const UiHomeSocial({Key? key}) : super(key: key);

  @override
  _UiHomeSocialState createState() => _UiHomeSocialState();
}

class _UiHomeSocialState extends State<UiHomeSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarSocial(),
      body: const SafeArea(
        child: (
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Post(
                    name: "Name",
                    timeAgo: "12 hour",
                    content: "Tìm trọ giá rẻ dành cho sinh viên",
                    imageUrl: "assets/images/message_gif.png",
                    comments: [Comment(author: "Name", text: "CMT VÀO ĐÂY")],
                  ),
                  Post(
                    name: "Name",
                    timeAgo: "12 hour",
                    content: "Tìm trọ giá rẻ dành cho sinh viên",
                    imageUrl: "assets/images/message_gif.png",
                  )
                ],
              ),
            )
        ),
      ),
      bottomNavigationBar: const BottomBarSocial(),

    );
  }
}
