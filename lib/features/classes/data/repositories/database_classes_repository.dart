import 'package:nexus_tpsh/features/classes/domain/entities/school_class.dart';
import 'package:nexus_tpsh/features/classes/domain/repositories/classes_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DatabaseClassesRepository implements ClassesRepository{
  final SupabaseClient _client;

  DatabaseClassesRepository(this._client);

  @override
  Future<void> createClass(SchoolClass schoolClass) {
    // TODO: implement createClass
    throw UnimplementedError();
  }

  @override
  Future<void> deleteClass(String id) {
    // TODO: implement deleteClass
    throw UnimplementedError();
  }

  @override
  Future<SchoolClass> getClassById(String id) async{
    final rawData = await _client
        .from("school_classes")
        .select()
        .eq("id", id)
        .limit(1);
    final data = rawData.map((item){
      return SchoolClass(id: item["id"], name: item["name"], grade: item["grade"], parallelLetter: item["parallel_letter"]??Null, profile: item["profile"]??Null);
    }).toList();
    return data[0];
  }

  @override
  Future<List<SchoolClass>> getClasses() async {
    final rawData = await _client
      .from("school_classes")
      .select();
    final data = rawData.map((item){
      SchoolClass schoolClass = SchoolClass(id: item["id"], name: item["name"], grade: item["grade"], parallelLetter: item["parallel_letter"]??Null, profile: item["profile"]??Null);
      return schoolClass;
    }).toList();
    return data;
  }

  @override
  Future<void> updateClass(String id, SchoolClass schoolClass) {
    // TODO: implement updateClass
    throw UnimplementedError();
  }


}