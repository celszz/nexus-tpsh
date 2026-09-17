class Teacher {
  final String id;
  final String firstname;
  final String lastname;
  final String? patronymic;
  final bool isClassSupervisor;

  const Teacher({
    required this.id,
    required this.firstname,
    required this.lastname,
    this.patronymic,
    required this.isClassSupervisor});
}