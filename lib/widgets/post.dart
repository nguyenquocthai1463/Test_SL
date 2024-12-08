import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-text.dart';

class Post extends StatelessWidget {
  final String name;
  final String timeAgo;
  final String content;
  final String imageUrl;
  final List<Widget> comments;
  const Post({required this.name, required this.timeAgo, required this.content, this.comments = const[], required this.imageUrl});

  @override
  Widget build(BuildContext context){
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: StyleConfigText.bodyTextSemiBold1,),
                      Text(timeAgo, style: StyleConfigText.bodyTextBlack3,),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 10,),
              Text(content),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(imageUrl),
                  Image.asset(imageUrl),
                ],
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 10),
                  Icon(Icons.comment),
                  SizedBox(width: 10),
                  Icon(Icons.share),
                ],
              ),
              if (comments.isNotEmpty) ...[
                const Divider(),
                ...comments,
                TextButton(onPressed: () {}, child: const Text("Xem bình luận")),
              ]
            ],
          )
      ),
    );
  }
}