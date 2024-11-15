import 'package:flutter/material.dart';

class Screen_48 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: customAppBar(),*/
      appBar: AppBar(
        title: Text('Student Life', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Text('K'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tạ Minh Khôi',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.black, size: 16),
                          SizedBox(width: 5),
                          Text('0.0 ★'),
                          SizedBox(width: 5),
                          Text('| chưa có đánh giá'),
                        ],
                      ),
                      Text('0 Người theo dõi | 0 Đang theo dõi'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Section(title: 'Quản lí', items: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Đơn thuê/mua phòng trọ, nhà trọ'),
                onTap: () {},
              ),
            ]),
            Section(title: 'Tiện ích', items: [
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text('Tin đăng đã lưu'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Tìm kiếm đã lưu'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star, color: Colors.yellow),
                title: Text('Đánh giá từ tôi'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Ưu đãi của tôi'),
                onTap: () {},
              ),
            ]),
            Section(title: '', items: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Cài đặt tài khoản'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Trợ giúp'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text('Đóng góp ý kiến'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Đăng xuất'),
                onTap: () {},
              ),
            ]),
          ],
        ),
      ),
      /*bottomNavigationBar: CustomBottomNavigationBar(),*/
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.business_center), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        selectedItemColor: Colors.blue, // Màu của mục được chọn
        unselectedItemColor: Colors.grey, // Màu của các mục chưa chọn
        backgroundColor: Colors.white, // Nền của bottom navigation
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<Widget> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title.isNotEmpty)
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.grey[200],
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ...items,
      ],
    );
  }
}
