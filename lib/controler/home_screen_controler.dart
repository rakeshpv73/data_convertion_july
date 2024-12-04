import 'package:data_convertion/model/model_student_class.dart';
import 'package:data_convertion/view/home_screen/dummy_db.dart';
import 'package:flutter/material.dart';

class Studentsscreencontroller with ChangeNotifier {
  List<ModelStudentClass> students = [];
  Students() {
    students = List.generate(
      Dummydb.students.length,
      (index) => ModelStudentClass(
          name: Dummydb.students[index]["name"],
          age: Dummydb.students[index]["age"],
          place: Dummydb.students[index]["place"],
          course: Dummydb.students[index]["course"],
          ph: Dummydb.students[index]["ph"]),
    );
    notifyListeners();
  }
}
