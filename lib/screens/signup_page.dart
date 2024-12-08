import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tasksl/utils/config-color.dart';
import 'package:tasksl/widgets/customalreadyaccount.dart';
import 'package:tasksl/widgets/customsignupbutton.dart';
import 'package:tasksl/widgets/customTextField.dart';
import 'package:http/http.dart' as http;
import 'package:tasksl/widgets/customsocialsignupoptions.dart';
import 'package:tasksl/model/Admin.dart';
import 'package:tasksl/network/network_request.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<Admin> pushedAdminData =[];
  List<Admin> adminData = [];

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  bool isLoginFailed = false;
  bool isEmailFailed = false;
  bool isPhoneFailed = false;
  bool isConfirmPhoneFailed = false;

  String? usernameError;
  String? passwordError;
  String? emailError;
  String? phoneError;
  String? confirmPasswordError;
  bool usernameHasError = false;
  bool passwordHasError = false;
  bool emailHasError = false;
  bool phoneHasError = false;
  bool confirmPasswordHasError = false;

  final formKey = GlobalKey<FormState>();

  // Future<void> _register() async {
  //   try {
  //     Admin newAdmin = Admin(
  //       username: usernameController.text,
  //       password: passwordController.text,
  //       personalInfo: PersonalInfo(
  //         phoneNumber: phoneController.text,
  //
  //       ),
  //       securityInfo: SecurityInfo(
  //         email: emailController.text,
  //       ),
  //
  //     );
  //
  //     //Chuyen doi tuong admin thanh json
  //     final adminJson = jsonEncode(newAdmin.toJson());
  //
  //     try {
  //       // Kiểm tra nếu file tồn tại trên GitHub
  //       final sha = await NetworkRequets.getFileSha();
  //
  //       // Lưu tài khoản admin vào GitHub
  //       final response = await NetworkRequets.postToGithub(adminJson, sha ?? "");
  //
  //       if (response.statusCode == 201 || response.statusCode == 200) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Tài khoản admin đã được lưu thành công')),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Lỗi khi lưu tài khoản admin lên GitHub')),
  //         );
  //       }
  //     } catch (error) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text('Đã xảy ra lỗi khi kết nối đến máy chủ GitHub')),
  //       );
  //     }
  //   } catch (error) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Đã xảy ra lỗi khi kết nối đến máy chủ')),
  //     );
  //   }
  // }

  //Ham danh gia va xu ly khi nhan nut dang ky
  void _validateForm() {
    setState(() {
      usernameHasError = usernameController.text.isEmpty;
      passwordHasError = passwordController.text.isEmpty;
      confirmPasswordHasError = confirmPasswordController.text.isEmpty;
      emailHasError = emailController.text.isEmpty;
      phoneHasError = phoneController.text.isEmpty;

      usernameError = usernameHasError ? "Username is required" : null;
      passwordError = passwordHasError ? "Password is required" : null;
      confirmPasswordError = confirmPasswordHasError ? "ConfirmPassword is required" : null;
      emailError = emailHasError ? "Email is required" : null;
      phoneError = phoneHasError ? "Phone is required" : null;

      if (usernameError == null && passwordError == null && confirmPasswordError == null && emailError == null && phoneError == null) {
        //_register();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleConfigColor.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                  label: "Username",
                  controller: usernameController,
                  errorText: usernameError,
                  hasError: usernameHasError,
                  icon: Icons.person,
                  obscureText: false
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                  label: "Phone number",
                  controller: phoneController,
                  errorText: phoneError,
                  hasError: phoneHasError,
                  icon: Icons.phone,
                  obscureText: false,
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                  label: "Email",
                  controller: emailController,
                  errorText: emailError,
                  hasError: emailHasError,
                  icon: Icons.email,
                  obscureText: false
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                  label: "Password",
                  controller: passwordController,
                  errorText: passwordError,
                  hasError: passwordHasError,
                  icon: Icons.password,
                  obscureText: !isPasswordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                label: "Confirm Password",
                controller: confirmPasswordController,
                errorText: confirmPasswordError,
                hasError: confirmPasswordHasError,
                icon: Icons.lock,
                obscureText: !isConfirmPasswordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  icon: Icon(isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 20,),
              CustomSignUpButton(
                formKey: formKey,
                isLoginFailed: isLoginFailed,
                validateForm: _validateForm,
              ),
              const SizedBox(height: 25,),
              const CustomSocialSignupOptions(),
              const SizedBox(height: 20,),
              const CustomAlreadyAccount(),
            ],
          )
        ),
      ),

    );
  }
}
