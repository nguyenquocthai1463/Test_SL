import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-color.dart';
import 'package:tasksl/utils/config-text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tasksl/widgets/appbar_sp.dart';
import 'package:tasksl/model/User.dart';
import 'package:tasksl/network/network_request.dart';

class Page30 extends StatefulWidget {
  final String userName;

  const Page30({super.key, required this.userName});

  @override
  _Page30State createState() => _Page30State();
}

class _Page30State extends State<Page30> {
  late GoogleMapController mapController;

  final LatLng _center =
  const LatLng(10.8231, 106.6297); //Toa do trung tam ban do

  // Khai báo ScrollController để điều khiển cuộn
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;

  late User user;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Hàm cuộn sang phải
  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 200, // Cuộn thêm 200 pixel sang phải
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // Hàm cuộn sang trái
  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 200, // Cuộn thêm 200 pixel sang trái
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarSp(),
      body: FutureBuilder<User?>(
        future: NetworkRequets.fetchUserById(widget.userName),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); //Hien thi khi dang du lieu
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            User user = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        //Ho so nguoi dung
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: StyleConfigColor.text2Dark2,
                                //child: const Icon(Icons.person, size: 40),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.username ?? "Unknown User",
                                  style: StyleConfigText.bodyTextRegular2,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: StyleConfigColor.secondaryLight2,
                                        size: 16),
                                    const Text("5.0 (10)"),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Image.asset('assets/images/hand.png'),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: StyleConfigColor.secondary,
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Đối tác",
                                  style: StyleConfigText.bodyTextRegular2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        //Nut goi va nhan tin
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: StyleConfigColor.succeed,
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8), // Điều chỉnh bo góc
                                    ),
                                  ),
                                  child: Stack(
                                    alignment:
                                    Alignment.center, // Đặt text ở giữa nút
                                    children: [
                                      Align(
                                        alignment: Alignment
                                            .centerLeft,
                                        // Căn chỉnh icon sang trái
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25.0),
                                          child: Image.asset(
                                            'assets/images/phone_call.png',
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment
                                            .center,
                                        // Căn chỉnh text ở giữa nút
                                        child: Text(
                                          "Bấm để gọi SĐT ${user.personalInfo?.phoneNumber!}",
                                          style: StyleConfigText
                                              .bodyTextRegular2,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: StyleConfigColor.text2Dark2,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20),
                                  //Them khoang trong
                                  alignment: Alignment
                                      .center,
                                  //Can giua noi dung voi phan icon ben trai
                                  side: BorderSide(
                                      color: StyleConfigColor
                                          .text2Dark4),
                                  //Duong vien
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ), // Điều chỉnh bo góc, giá trị thấp hơn làm góc bớt cong
                                ),
                                child: Stack(
                                  alignment:
                                  Alignment.center, // Đặt text ở giữa nút
                                  children: [
                                    Align(
                                      alignment: Alignment
                                          .centerLeft,
                                      // Căn chỉnh icon sang trái
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 25.0),
                                        child: Image.asset(
                                          'assets/images/message.png',
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment
                                          .center, // Căn chỉnh text ở giữa nút
                                      child: Text(
                                        "Chat",
                                        style: StyleConfigText.bodyTextRegular2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: _scrollLeft,
                                    icon: const Icon(Icons.arrow_back)),
                                Expanded(
                                  child: SingleChildScrollView(
                                      controller:
                                      _scrollController,
                                      // Gắn controller vào SingleChildScrollView
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Expanded(
                                              child: Chip(
                                                label: const Text(
                                                    "Phòng này còn cho thuê không ạ?"),
                                                backgroundColor:
                                                StyleConfigColor.text2Dark2,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 8.0),
                                              child: Expanded(
                                                child: Chip(
                                                  label: const Text(
                                                      "Còn phòng không ạ?"),
                                                  backgroundColor:
                                                  StyleConfigColor.text2Dark2,
                                                ),
                                              ),
                                          ),
                                        ],
                                      )),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.arrow_forward),
                                  onPressed: _scrollRight, // Khi bấm mũi tên phải
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        //Chi tiet phong
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: StyleConfigColor.text2Dark1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(children: [
                                Image.asset(
                                    'assets/images/hand_gray.png'),
                                // Tạo độ mờ cho ảnh
                                const SizedBox(width: 10),
                                Text(
                                  'Là đối tác của SCHOOL LIFE',
                                  style: StyleConfigText.bodyTextRegular2,
                                ),
                              ]),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset('assets/images/check.png'),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Cam kết xác minh thông tin cá nhân Môi giới",
                                    style: StyleConfigText.bodyTextRegular2,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/images/check.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Cam kết đảm bảo chất lượng tư vấn",
                                    style: StyleConfigText.bodyTextRegular2,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center,
                                  // Căn chỉnh Row ở giữa theo chiều ngang
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        //Xu ly hoat dong
                                      },
                                      child: const Text("Tìm hiểu thêm"),
                                    ),
                                    const Icon(Icons.arrow_downward),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Image.asset('assets/images/tools_icon.png'),
                        onPressed: () {
                          // Xử lý khi nhấn vào icon
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text("No user found"));
          }

        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hành động khi nhấn FloatingActionButton
        },
        child: const Icon(Icons.add), // Bạn có thể thay bằng icon hoặc widget tùy ý
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Đặt FloatingActionButton ở giữa
      bottomNavigationBar: BottomAppBar(
        color: StyleConfigColor.text2Dark2,
        shape:
        const CircularNotchedRectangle(), // Hình dạng khuyết để tạo chỗ cho nút nổi
        notchMargin:
        8.0, // Khoảng cách giữa FloatingActionButton và BottomAppBar
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/home.png'),
              onPressed: () {
                _onItemTapped(
                    0); // Thay đổi _selectedIndex và cập nhật giao diện
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/chart.png'),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            const SizedBox(width: 40), // Khoảng trống cho FloatingActionButton ở giữa
            IconButton(
              icon: Image.asset('assets/images/bell.png'),
              onPressed: () {
                _onItemTapped(2);
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
