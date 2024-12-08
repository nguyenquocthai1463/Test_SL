import 'package:flutter/material.dart';

class Buildemptystate {
  static Widget buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/ufo.png'),
          const SizedBox(height: 16),
          const Text(
            'Không tìm thấy tin đăng',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'Hiện tại bạn không có tin đăng nào',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Đăng tin'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}