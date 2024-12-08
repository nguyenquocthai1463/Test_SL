import "package:flutter/material.dart";
import "package:tasksl/utils/config-color.dart";

class NavbarFooter extends StatelessWidget {
  const NavbarFooter({ super.key });

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
                icon: Image.asset('assets/images/home.png')
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/chart.png')
            ),
            const SizedBox(width: 40), // Khoảng trống cho FAB
            IconButton(
              icon: Image.asset('assets/images/bell.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            ),
          ],
        )
    );
  }
}