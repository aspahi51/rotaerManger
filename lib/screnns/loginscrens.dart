import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';
import '../utils/user_model.dart';
import 'custom/customBtn.dart';
import 'home_screns.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تسجيل الدخول - نظام الطالب')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'رقم الطالب', 
                prefixIcon: Icon(Icons.person)
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'كلمة المرور', 
                prefixIcon: Icon(Icons.lock)
              ), 
              obscureText: true,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'تسجيل الدخول', 
              onPressed: _login
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    final student = StudentModel(
      name: 'منتصر أحمد', 
      id: '442100000',
      major: 'علوم الحاسب',
      level: 'السنة الرابعة',
      gpa: 4.75
    );
    MontasserRouter.navigateAndRemoveUntil(
      const HomePage(), 
      arguments: {'student': student.toMap()}
    );
  }
}