import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-color.dart';

class CustomSocialSignupButton extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomSocialSignupButton({
    super.key,
    required this.imagePath,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 390,
        height: 60,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(color: StyleConfigColor.text2Dark2), // Thay đổi cho phù hợp với style của bạn
          borderRadius: BorderRadius.circular(8),
          color: StyleConfigColor.text2, // Thay đổi màu sắc theo nhu cầu của bạn
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const SizedBox(width: 64),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(imagePath,
                      width: 40, height: 40, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(text,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500), // Tuỳ chỉnh style chữ
                    textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
