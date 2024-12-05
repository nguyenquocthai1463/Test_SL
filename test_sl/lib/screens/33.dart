import 'package:flutter/material.dart';

class TestModal_33 extends StatefulWidget {
  const TestModal_33({super.key});

  @override
  State<TestModal_33> createState() => _TestModal_33State();
}

class _TestModal_33State extends State<TestModal_33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _dialeogBuilder(context);
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }
}

Future<void> _dialeogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    useSafeArea: true,
    builder: (BuildContext context) {
      return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text('Yêu cầu hẹn xem phòng',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Danh sách hẹn lịch xem phòng (1/100)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return _buildDialog(
                      'Nguyễn Văn A',
                      'Đã hẹn lịch xem phòng vào 10h00 ngày 10/10/2021',
                      'assets/images/image.png');
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildDialog(String title, String content, String image) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 210, 210, 210),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Image.asset(image),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(fontSize: 14, color: Color(0xFFF11F1F))),
            const SizedBox(height: 5),
            Text(content,
                style: const TextStyle(fontSize: 16, color: Colors.black)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    backgroundColor: const Color(0xFF50A99A),
                  ),
                  onPressed: () {},
                  child: const Text('Duyệt yêu cầu',
                      style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    backgroundColor: const Color(0xFF50A99A),
                  ),
                  onPressed: () {},
                  child: const Text('Hủy yêu cầu',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
