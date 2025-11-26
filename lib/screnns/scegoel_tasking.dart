// 📁 pages/schedule_page.dart
import 'package:flutter/material.dart';
import '../navigtion/montasser_router.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الجدول الدراسي'), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), 
          onPressed: MontasserRouter.goBack
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.schedule, color: Colors.blue),
            title: Text('قواعد البيانات'),
            subtitle: Text('الإثنين - 8:00 صباحاً'),
          ),
          ListTile(
            leading: Icon(Icons.schedule, color: Colors.green),
            title: Text('الذكاء الاصطناعي'),
            subtitle: Text('الإثنين - 10:00 صباحاً'),
          ),
          ListTile(
            leading: Icon(Icons.schedule, color: Colors.orange),
            title: Text('هندسة البرمجيات'),
            subtitle: Text('الثلاثاء - 9:00 صباحاً'),
          ),
          ListTile(
            leading: Icon(Icons.schedule, color: Colors.purple),
            title: Text('شبكات الحاسب'),
            subtitle: Text('الأربعاء - 11:00 صباحاً'),
          ),
        ],
      ),
    );
  }
}