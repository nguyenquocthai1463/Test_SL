import 'package:flutter/material.dart';
import "package:tasksl/utils/config-color.dart";

class BottomBarSocial extends StatelessWidget {
  const BottomBarSocial({ super.key });

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
        color: StyleConfigColor.text2Dark2,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home)
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search)
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline)
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border)
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline)
            ),
          ],
        )
    );
  }
}