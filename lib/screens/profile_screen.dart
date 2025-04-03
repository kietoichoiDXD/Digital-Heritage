import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/placeholder.png'),
            ),
            SizedBox(height: 16),
            Text('John Doe', style: AppTextStyles.heading1),
            SizedBox(height: 8),
            Text('john.doe@example.com', style: AppTextStyles.bodyText),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}