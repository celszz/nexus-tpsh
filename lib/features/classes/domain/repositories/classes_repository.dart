import 'package:nexus_tpsh/features/classes/domain/entities/school_class.dart';

abstract class ClassesRepository {
  Future<List<SchoolClass>> getClasses();
  Future<SchoolClass> getClassById(String id);
  Future<void> createClass(SchoolClass schoolClass);
  Future<void> updateClass(String id, SchoolClass schoolClass);
  Future<void> deleteClass(String id);

}