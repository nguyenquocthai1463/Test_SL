import 'package:flutter/material.dart';
import 'package:test_sl/widgets/AppBarSP.dart';
import 'package:test_sl/widgets/CustomBottomNavigationBar.dart';

class Screen_68_69 extends StatefulWidget {
  @override
  _Screen_68_69State createState() => _Screen_68_69State();
}

class _Screen_68_69State extends State<Screen_68_69> {
  // Danh sách bài viết với giá tiền khác nhau
  List<Map<String, String>> allPosts = [
    {'title': 'HOT! NHÀ TRỌ CÁCH ĐẠI HỌC CÔNG THƯƠNG TPHCM 300M', 'category': 'Cho Thuê', 'price': '2 TRIỆU/THÁNG'},
    {'title': 'NHÀ TRỌ GIÁ RẺ QUẬN 3', 'category': 'Giá rẻ', 'price': '1.5 TRIỆU/THÁNG'},
    {'title': 'DỊCH VỤ VỆ SINH CHUNG CƯ', 'category': 'Dịch Vụ Tốt', 'price': '500 NGHÌN'},
    {'title': 'NHÀ TRỌ CÁCH TRUNG TÂM 10 PHÚT', 'category': 'Cho Thuê', 'price': '3 TRIỆU/THÁNG'},
    {'title': 'DỊCH VỤ SỬA CHỮA ĐIỆN', 'category': 'Dịch Vụ Tốt', 'price': '200 NGHÌN'},
    {'title': 'CHUNG CƯ CHO THUÊ QUẬN 7', 'category': 'Cho Thuê', 'price': '5 TRIỆU/THÁNG'},
    {'title': 'MÁY LẠNH GIÁ RẺ', 'category': 'Giá rẻ', 'price': '2 TRIỆU'},
    {'title': 'DỊCH VỤ INTERNET TỐT NHẤT', 'category': 'Dịch Vụ Tốt', 'price': '300 NGHÌN/THÁNG'},
  ];

  // Biến để lưu lựa chọn của Dropdown
  String dropdownValue = 'Cho Thuê';

  // Hàm lọc bài viết theo danh mục
  List<Map<String, String>> getFilteredPosts(String category) {
    return allPosts.where((post) => post['category'] == category).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Lọc danh sách bài viết theo lựa chọn của dropdown
    List<Map<String, String>> filteredPosts = getFilteredPosts(dropdownValue);

    return Scaffold(
      appBar: CustomAppBarSP(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // ListTile for user information
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: const Icon(Icons.person, color: Colors.white),
                    ),
                    title: const Text(
                      'User',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: const Text(
                      'Đang hoạt động',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    trailing: PopupMenuButton<String>(
                      icon: const Icon(Icons.more_vert),
                      onSelected: (value) {
                        // Handle menu options
                        print('Selected: $value');
                      },
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem<String>(
                            value: 'profile',
                            child: Text('Xem hồ sơ'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'block',
                            child: Text('Chặn người này'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'mute',
                            child: Text('Ẩn đoạn chat'),
                          ),
                        ];
                      },
                    ),
                  ),

                  // Dropdown to select category
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Cho Thuê', 'Giá rẻ', 'Dịch Vụ Tốt']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }).toList(),
                      underline: Container(),
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  // Card for filtered posts
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: filteredPosts.map((post) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Image section
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/image1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // Title and price
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          post['title']!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          post['price']!, // Hiển thị giá tiền
                                          style: const TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            // TextBox at the bottom
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              color: Colors.grey[200],
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Trò chuyện ngay',
                        hintStyle: TextStyle(
                          color: Colors.grey[500], // Màu nhạt cho chữ gợi ý
                        ),
                        filled: true,
                        fillColor: Colors.white, // Màu nền của TextField
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0), // Padding bên trong TextField
                        suffixIcon: IconButton(
                          icon: Icon(Icons.send, color: Colors.blue), // Biểu tượng gửi tin nhắn
                          onPressed: () {
                            // Xử lý gửi tin nhắn
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
