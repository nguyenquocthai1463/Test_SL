import 'package:flutter/material.dart';
import 'package:test_sl/utils/config-color.dart';

class CustomBottomNavigationBar extends StatelessWidget { // Đổi tên lớp ở đây
  const CustomBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
        color: StyleConfigColor.text2Dark2,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/home.png')
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/chart.png')
            ),
            SizedBox(width: 40), // Khoảng trống cho FAB
            IconButton(
              icon: Image.asset('assets/bell.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/user.png'),
              onPressed: () {},
            ),
          ],
        )
    );
  }
}
