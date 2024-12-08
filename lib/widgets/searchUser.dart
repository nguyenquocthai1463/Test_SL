import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-text.dart';

class SearchUser extends StatelessWidget {
  const SearchUser({ super.key });

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Image.asset("assets/images/avatar.png"),
        Column(
          children: [
            Text(
              "Biệt danh",
              style: StyleConfigText.bodyTextSemiBold1,
            )
          ],
        ),
        TextButton(
          // style: ButtonStyle(
          //   backgroundColor: ,
          // ),
          onPressed: () {},
          child: const Text('Theo dõi'),
        ),
      ],
    );
  }
}