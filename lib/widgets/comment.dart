import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  final String author;
  final String text;

  const Comment({ required this.author, required this.text });

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(text)
                )
            )
          ],
        )
    );
  }
}