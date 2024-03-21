class StudentData {
  final String name;
  final String department;
  final double percent;
  final double gpa;
  final double completedHours;
  final String code;

  const StudentData({
    required this.code,
    required this.completedHours,
    required this.department,
    required this.gpa,
    required this.name,
    required this.percent,
  });
}
