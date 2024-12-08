import 'package:flutter/material.dart';
import 'package:tasksl/widgets/customsocialsignupbutton.dart';

class CustomSocialSignupOptions extends StatelessWidget {
  const CustomSocialSignupOptions({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSocialSignupButton(
            imagePath: 'assets/images/apple.png',
            text: "Login with Apple"),
        CustomSocialSignupButton(
            imagePath: 'assets/images/google.png',
            text: "Login with Google"),
        CustomSocialSignupButton(
            imagePath: 'assets/images/facebook.png',
            text: "Login with Facebook"),
      ],
    );
  }
}
