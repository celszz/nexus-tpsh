class ScheduleEntry {
  final String id;
  final String classId;
  final String teacherId;
  final String roomId;
  final String weekday;
  final String number;

  const ScheduleEntry({
    required this.id,
    required this.classId,
    required this.teacherId,
    required this.roomId,
    required this.weekday,
    required this.number});
}