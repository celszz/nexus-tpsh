class SchoolClass{
  final String id;
  final String name;
  final String grade;
  final String? parallelLetter;
  final String? profile;

  const SchoolClass({
    required this.id,
    required this.name,
    required this.grade,
    this.parallelLetter,
    this.profile});

}