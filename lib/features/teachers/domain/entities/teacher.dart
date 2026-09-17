class Teacher {
  final String id;
  final String name;
  final String surname;
  final String? patronymic;
  final bool isClassSupervisor;

  const Teacher({
    required this.id,
    required this.name,
    required this.surname,
    this.patronymic,
    required this.isClassSupervisor});
}