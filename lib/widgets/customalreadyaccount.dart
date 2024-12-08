import 'package:flutter/material.dart';

class CustomAlreadyAccount extends StatelessWidget {
  //final VoidCallback onForgotPasswordPressed;

  const CustomAlreadyAccount({
    super.key,
    //required this.onForgotPasswordPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {}, // Gọi callback khi nhấn vào
          child: const Text(
            "Already have an account?",
            style: TextStyle(
              color: Colors.blue, // Có thể tuỳ chỉnh theo style của bạn
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
