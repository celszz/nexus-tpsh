class ScheduleOverride {
  final String id;
  final String scheduleId;
  final String? subjectId;
  final String? teacherId;
  final String? roomId;
  final bool isCancelled;

  const ScheduleOverride({
    required this.id,
    required this.scheduleId,
    this.subjectId,
    this.teacherId,
    this.roomId,
    required this.isCancelled});
}