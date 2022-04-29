import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class StudentInfo extends StatelessWidget {
  final matricula;
  final name;
  final career;
  final semester;
  final phone;
  final email;
  final imagen;

  const StudentInfo(
      {Key? key,
      required this.matricula,
      required this.name,
      required this.career,
      required this.semester,
      required this.phone,
      required this.imagen,
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
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("$imagen"),
                radius: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(name,
                  style: const TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await FlutterPhoneDirectCaller.callNumber(phone);
                },
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(247, 235, 137, 10),
                  child: Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(247, 235, 137, 10),
                child: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {},
                child: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.whatsapp_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Color.fromARGB(247, 235, 137, 10),
            height: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.phone_outlined,
                size: 30,
                color: Color.fromARGB(255, 0, 238, 255),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(' Móvil | Baja California',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                (Text(phone,
                    style: const TextStyle(color: Colors.white, fontSize: 16))),
              ]),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(
                Icons.numbers,
                size: 30,
                color: Color.fromARGB(255, 0, 238, 255),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(' Matrícula',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                (Text(matricula,
                    style: const TextStyle(color: Colors.white, fontSize: 16))),
              ]),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(
                Icons.star_outline,
                size: 30,
                color: Color.fromARGB(255, 0, 238, 255),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(' Carrera',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                (Text(career,
                    style: const TextStyle(color: Colors.white, fontSize: 16))),
              ]),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(
                Icons.apps,
                size: 30,
                color: Color.fromARGB(255, 0, 238, 255),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(' Semestre',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                (Text(matricula,
                    style: const TextStyle(color: Colors.white, fontSize: 16))),
              ]),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(
                Icons.email,
                size: 30,
                color: Color.fromARGB(255, 0, 238, 255),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(' Correo',
                    style: TextStyle(color: Colors.grey, fontSize: 10)),
                (Text(email,
                    style: const TextStyle(color: Colors.white, fontSize: 16))),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
