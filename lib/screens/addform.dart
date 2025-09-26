import 'package:flutter/material.dart';
import 'package:myproject/main.dart';
import 'package:myproject/models/person.dart';
import 'package:myproject/screens/item.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formkey = GlobalKey<FormState>();
  String _name = "";
  int _age = 20;
  Job _job = Job.police;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("Name", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Name";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text("Age", style: TextStyle(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Age";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),

                const SizedBox(height: 20),
                DropdownButtonFormField(
                  value: _job,
                  items: Job.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.title));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                FilledButton(
                  onPressed: () {
                    _formkey.currentState!.validate();
                    _formkey.currentState!.save();
                    data.add(Person(name: _name, age: _age, job: _job));
                    _formkey.currentState!.reset();
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (ctx) => const MyApp()),
              );
                  },
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Save", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
