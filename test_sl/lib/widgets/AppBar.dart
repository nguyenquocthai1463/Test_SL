import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key}): preferredSize = const Size.fromHeight(kToolbarHeight * 2),
        super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_circle_left_outlined),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: const Text(
        'Student Lite',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
        ),
      ),
      centerTitle: true,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Đẩy nội dung xuống dưới
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.chat),
                  onPressed: () {
                    // Chat action
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.grid_view),
                  onPressed: () {
                    // Grid view action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}