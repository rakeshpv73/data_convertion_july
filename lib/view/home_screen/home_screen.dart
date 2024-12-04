
import 'package:data_convertion/controler/home_screen_controler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Studentsscreen extends StatefulWidget {
  const Studentsscreen({super.key});

  @override
  State<Studentsscreen> createState() => _StudentsscreenState();
}

class _StudentsscreenState extends State<Studentsscreen> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<Studentsscreencontroller>().Students();
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: List.generate(context.watch<Studentsscreencontroller>().students.length, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 5)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name : ${context.watch<Studentsscreencontroller>().students[index].name}"),
                      Text("Age : ${context.watch<Studentsscreencontroller>().students[index].age}"),
                      Text("Place : ${context.watch<Studentsscreencontroller>().students[index].place}"),
                      Text("Course : ${context.watch<Studentsscreencontroller>().students[index].course}"),
                      Text("Phone : ${context.watch<Studentsscreencontroller>().students[index].ph}"),
                    ],
                  ),
                ),
              ),
            ),),),
          ),
        ),
      ),
    );
  }
}