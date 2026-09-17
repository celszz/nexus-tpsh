import 'package:nexus_tpsh/features/schedule/domain/entities/weekday.dart';

class ScheduleEntry {
  final String id;
  final String classId;
  final String subjectId;
  final String teacherId;
  final String roomId;
  final Weekday weekday;
  final int lessonNumber;

  const ScheduleEntry({
    required this.id,
    required this.classId,
    required this.teacherId,
    required this.roomId,
    required this.weekday,
    required this.lessonNumber,
    required this.subjectId});
}