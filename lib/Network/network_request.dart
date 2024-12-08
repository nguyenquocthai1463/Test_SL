import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tasksl/model/User.dart';
import 'package:logger/logger.dart';
import 'package:tasksl/Model/Phong.dart';

class NetworkRequets {
  static const String url =
      'https://raw.githubusercontent.com/dvanh0101/DangVietAnh_Mobile/master/Student_Life.Users.json';

  static Future<List<Phong>> fetchPhong() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Phong.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  static Future<User?> fetchUserByName(String name) async {
    var logger = Logger();
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        //logger.i("UserFetch", "Response data: $data");

        // Kiểm tra xem response có phải là List hay không
        if (data is List) {
          // Duyệt qua danh sách người dùng và tìm người dùng theo tên
          for (var jsonUser in data) {
            final user = User.fromJson(jsonUser);
            if (user.username == name) { // Kiểm tra nếu trùng tên
              return user;
            }
          }
        } else {
          throw Exception('Expected a list but got ${data.runtimeType}');
        }
        return null;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  // Hàm lấy dữ liệu user theo mã
  static Future<User?> fetchUserById(String id) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // Kiểm tra xem response có phải là List hay không
        if (data is List) {
          // Duyệt qua danh sách người dùng và tìm người dùng theo tên
          for (var jsonUser in data) {
            final user = User.fromJson(jsonUser);
            if (user.userId == id) { // Kiểm tra nếu trùng tên
              return user;
            }
          }
        } else {
          throw Exception('Expected a list but got ${data.runtimeType}');
        }
        return null;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}