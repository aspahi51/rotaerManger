// 📁 models/student_model.dart
class StudentModel {
  final String name;
  final String id;
  final String major;
  final String level;
  final double gpa;

  const StudentModel({
    required this.name,
    required this.id,
    required this.major,
    required this.level,
    required this.gpa,
  });

  Map<String, dynamic> toMap() => {
    'name': name, 
    'id': id, 
    'major': major, 
    'level': level, 
    'gpa': gpa
  };
  
  factory StudentModel.fromMap(Map map) => StudentModel(
    name: map['name'] ?? '', 
    id: map['id'] ?? '', 
    major: map['major'] ?? '', 
    level: map['level'] ?? '', 
    gpa: map['gpa'] ?? 0.0
  );
}