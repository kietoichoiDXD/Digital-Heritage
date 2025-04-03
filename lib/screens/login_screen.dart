import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to Disanso',
              style: AppTextStyles.heading1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 48),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Password', isPassword: true),
            SizedBox(height: 24),
            CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}