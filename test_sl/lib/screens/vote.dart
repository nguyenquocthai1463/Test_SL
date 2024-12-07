import 'package:flutter/material.dart';

class Vote extends StatefulWidget {
  const Vote({super.key});

  @override
  State<Vote> createState() => _PollPageState();
}

class _PollPageState extends State<Vote> {
  bool hideVoters = true;
  bool hideResults = true;
  bool allowMultiple = true;
  bool allowAddingOptions = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            // Xử lý khi nhấn nút Hủy
            Navigator.pop(context);
          },
          child: Text(
            'Hủy',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        title: Center(
          child: Text(
            'Tạo Bình Chọn',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Xử lý khi nhấn nút Đăng
            },
            child: Text(
              'Đăng',
              style: TextStyle(color: Colors.white, fontSize: 16, backgroundColor: Colors.blue,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Đặt câu hỏi bình chọn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(hintText: 'Câu hỏi'),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(hintText: 'Phương án 1'),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(hintText: 'Phương án 2'),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(hintText: 'Thêm phương án'),
            ),
            SizedBox(height: 16),
            Text(
              'Tùy chọn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Ẩn người bình chọn'),
              value: hideVoters,
              onChanged: (value) {
                setState(() {
                  hideVoters = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Ẩn kết quả khi chưa bình chọn'),
              value: hideResults,
              onChanged: (value) {
                setState(() {
                  hideResults = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Chọn nhiều phương án'),
              value: allowMultiple,
              onChanged: (value) {
                setState(() {
                  allowMultiple = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Có thể thêm phương án'),
              value: allowAddingOptions,
              onChanged: (value) {
                setState(() {
                  allowAddingOptions = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
