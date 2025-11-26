// 📁 pages/task_details.dart
import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';

class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تفاصيل المهمة'), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: MontasserRouter.goBack
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('مشروع قواعد البيانات', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('نظام إدارة المكتبة', style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 20),
            Text('الوصف:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('تصميم وتنفيذ نظام متكامل لإدارة المكتبة باستخدام SQL وواجهة مستخدم'),
            SizedBox(height: 20),
            Text('موعد التسليم: 2024-01-20', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('الحالة: قيد التنفيذ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
          ],
        ),
      ),
    );
  }
}