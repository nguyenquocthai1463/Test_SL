import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background image and profile picture
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_user_profile.png'), // Replace with your background image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your profile image path
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            // Form fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  CustomTextField(label: 'Re-enter the name'),
                  CustomTextField(label: 'Re-enter Email'),
                  CustomTextField(label: 'Re-enter phone number'),
                  CustomTextField(label: 'Re-enter the address'),
                  CustomTextField(label: 'Re-enter gender'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              title: Text('Booking details'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle booking details tap
              },
            ),
            ListTile(
              title: Text('Support center'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle support center tap
              },
            ),
            SizedBox(height: 20),
            // Submit and Log out buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle submit action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Thay thế primary thành backgroundColor
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text('Submit'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Handle log out action
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.purple, // Thay thế primary thành foregroundColor
                      side: BorderSide(color: Colors.purple),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Row(
                      children: [
                        Text('Log out'),
                        SizedBox(width: 5),
                        Icon(Icons.logout, size: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;

  CustomTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
