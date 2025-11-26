import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';
import 'custom/customBtn.dart';
import 'profails.dart';
import 'scegoel_tasking.dart';
import 'tasking.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final student = ModalRoute.of(context)?.settings.arguments as Map?;

    return Scaffold(
      appBar: AppBar(title: Text('مرحباً ${student?['name'] ?? ''}')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.school, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            Text(
              'نظام إدارة الطالب',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue[800]),
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'الملف الأكاديمي', 
              onPressed: () => MontasserRouter.navigateTo(
                const ProfilePage(), 
                arguments: student
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'المهام الدراسية', 
              onPressed: () => MontasserRouter.navigateTo(const TasksPage())
            ),
            const SizedBox(height: 16),
            CustomButton(
              text: 'الجدول الدراسي', 
              onPressed: () => MontasserRouter.navigateTo(const SchedulePage())
            ),
          ],
        ),
      ),
    );
  }
}