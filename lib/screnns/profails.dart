import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';
import '../utils/user_model.dart';
import 'tasking.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final studentData = ModalRoute.of(context)?.settings.arguments as Map?;
    final student = studentData != null ? StudentModel.fromMap(studentData) : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('الملف الأكاديمي'), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: MontasserRouter.goBack
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50, 
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              student?.name ?? 'منتصر أحمد', 
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 10),
            _buildInfoItem('رقم الطالب:', student?.id ?? '442100000'),
            _buildInfoItem('التخصص:', student?.major ?? 'علوم الحاسب'),
            _buildInfoItem('المستوى:', student?.level ?? 'السنة الرابعة'),
            _buildInfoItem('المعدل التراكمي:', '${student?.gpa ?? 4.75}'),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () => MontasserRouter.navigateTo(const TasksPage()), 
              icon: const Icon(Icons.assignment), 
              label: const Text('عرض المهام')
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          Text(value),
        ],
      ),
    );
  }
}