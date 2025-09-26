//Enum
import 'package:flutter/material.dart';

enum Job {
  //stepเรียกใช้
  doctor(title: "หมอ", image: "assets/images/photo1.png",color:Colors.green),
  teacher(title: "ครู", image: "assets/images/photo1.png",color:Colors.red),
  nurse(title: "พยาบาล", image: "assets/images/photo1.png",color:Colors.blue),
  police(title: "ตำรวจ", image: "assets/images/photo1.png",color:Colors.yellow);
  //step2
  const Job({required this.title, required this.image,required this.color}); 
  //step1
  final String title;
  final String image;
  final Color color;
}

//Model
class Person {
  Person({required this.name, required this.age, required this.job}); //เรียกใช้
  //step 1
  String name;
  int age;
  Job job;
}
//step2
List<Person> data = [
  Person(name: "Phoo", age: 30, job: Job.doctor),
 

];
