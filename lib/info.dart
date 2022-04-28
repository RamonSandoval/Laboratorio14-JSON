import 'package:flutter/material.dart';

class StudentInfo extends StatelessWidget {
  final matricula;
  final name;
  final career;
  final semester;
  final phone;
  final email;

  const StudentInfo(
      {Key? key,
      required this.matricula,
      required this.name,
      required this.career,
      required this.semester,
      required this.phone,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(41, 39, 46, 300),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Información del Alumno',
            style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(children: [
          Row(children: [
            const Icon(
              Icons.person,
              size: 40,
              color: Color.fromARGB(247, 235, 137, 10),
            ),
            Text('  Nombre: ' + name + '\n',
                style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const Icon(
              Icons.password,
              size: 40,
              color: Color.fromARGB(247, 235, 137, 10),
            ),
            Text('  Matrícula: ' + matricula + '\n',
                style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const Icon(
              Icons.school,
              size: 40,
              color: Color.fromARGB(247, 235, 137, 10),
            ),
            Text('  Carrera: ' + career + '\n',
                style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const Icon(
              Icons.grade,
              size: 40,
              color: Color.fromARGB(247, 235, 137, 10),
            ),
            Text('  Semestre: ' + semester + '\n',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const Icon(
              Icons.phone,
              size: 40,
              color: Color.fromARGB(246, 235, 137, 10),
            ),
            Text('  Celular: ' + phone + '\n',
                style: const TextStyle(color: Colors.white, fontSize: 16)),
          ]),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            const Icon(
              Icons.email,
              size: 40,
              color: Color.fromARGB(247, 235, 137, 10),
            ),
            Text(
              '  Correo: ' + email,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ]),
        ]),
      ),
    );
  }
}
