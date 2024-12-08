import "package:flutter/material.dart";
import "package:tasksl/utils/config-color.dart";
import "package:tasksl/utils/config-text.dart";
import "package:tasksl/widgets/AppBar.dart";
import "package:tasksl/widgets/input_box.dart";
import "package:tasksl/widgets/navbar_footer.dart";

class UiUser65 extends StatefulWidget {
  const UiUser65({super.key});

  @override
  _UiUser65State createState() => _UiUser65State();
}

class _UiUser65State extends State<UiUser65> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: InputBox.inputDecoration(
                      'Search...',
                      _controller,
                      const Icon(Icons.search),
                    ),
                  ),
                  const SizedBox(
                      width: 8), // Khoảng cách giữa InputBox và icon đầu tiên
                  // Two icons next to the input box
                  IconButton(
                    icon: Image.asset('assets/images/chat_all.png'),
                    onPressed: () {
                      // Hành động khi nhấn icon chat
                    },
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: const Icon(Icons.grid_view),
                    onPressed: () {
                      // Hành động khi nhấn icon grid
                    },
                  ),
                ],
              )),
          Image.asset(
            'assets/images/no_message.png',
            height: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            'Bạn chưa có cuộc trò chuyện nào!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Trải nghiệm chat để làm rõ thông tin về nhà hay phòng trọ trước khi bắt đầu thực hiện mua hoặc thuê.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: StyleConfigColor.succeed,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              textStyle: StyleConfigText.bodyTextBlack3,
            ),
            child: const Text('Về trang chủ'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Hành động khi nhấn FloatingActionButton
        },
        child: const Icon(Icons.add), // Bạn có thể thay bằng icon hoặc widget tùy ý
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarFooter(),
    );
  }
}
