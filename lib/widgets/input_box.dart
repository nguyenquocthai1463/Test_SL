import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-color.dart';

class InputBox {
  static Widget inputDecoration(
      String hintText, TextEditingController controller, Icon icon) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: StyleConfigColor.text2Dark8, // Border color
          width: 1.0, // Border width
        ),
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.start,
        focusNode: FocusNode(),
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
          prefixStyle: hintText.isEmpty
              ? const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontFamily: 'Roboto-Light',
          )
              : const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto-Light',
          ),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          filled: true,
          fillColor: Colors.white,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          hintStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'Roboto-Light',
          ),
        ),
      ),
    );
  }
}
