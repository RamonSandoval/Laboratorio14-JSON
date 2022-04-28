import 'package:flutter/material.dart';
import 'info.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List estudiantes = [];

  Future<String> infoJson() async {
    var jsonFile = await rootBundle.loadString('assets/estudiantes.json');
    setState(() => estudiantes = json.decode(jsonFile));
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    this.infoJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(41, 39, 46, 300),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Estudiantes',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: ListView.builder(
              itemCount: estudiantes.length,
              itemBuilder: (context, index) {
                var name = estudiantes[index]['name'];
                var matricula = estudiantes[index]['matricula'];
                var career = estudiantes[index]['career'];
                var semester = estudiantes[index]['semester'];
                var phone = estudiantes[index]['phone'];
                var email = estudiantes[index]['email'];
                return Container(
                  alignment: Alignment.center,
                  height: 90,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentInfo(
                                  matricula: matricula,
                                  name: name,
                                  career: career,
                                  semester: semester,
                                  phone: phone,
                                  email: email)));
                    },
                    title: Text(
                      name,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: Text(career,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 138, 138, 138),
                            fontSize: 12)),
                    leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(247, 235, 137, 10),
                        child: Text(
                          name.substring(0, 1),
                          style: const TextStyle(
                              color: Color.fromARGB(247, 255, 255, 255)),
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
