import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';
import 'tasking_details.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المهام الدراسية'), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: MontasserRouter.goBack
        ),
      ),
      body: ListView(
        children: [
          _buildTaskItem(
            'مشروع قواعد البيانات',
            'نظام إدارة المكتبة',
            '2024-01-20',
            Icons.assignment,
            Colors.orange
          ),
          _buildTaskItem(
            'تمرين الخوارزميات',
            'تحليل التعقيد الزمني',
            '2024-01-18',
            Icons.quiz,
            Colors.green
          ),
          _buildTaskItem(
            'بحث الذكاء الاصطناعي',
            'تعلم الآلة والتطبيقات',
            '2024-01-25',
            Icons.article,
            Colors.blue
          ),
          _buildTaskItem(
            'مشروع التخرج',
            'تطبيق جوال متكامل',
            '2024-02-10',
            Icons.school,
            Colors.purple
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(String title, String description, String date, IconData icon, Color color) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            const SizedBox(height: 4),
            Text('موعد التسليم: $date', style: const TextStyle(color: Colors.grey)),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => MontasserRouter.navigateTo(const TaskDetailsPage()),
      ),
    );
  }
}