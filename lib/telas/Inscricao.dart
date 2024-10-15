// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Inscricao extends StatefulWidget {
  @override
  _InscricaoState createState() => _InscricaoState();
}

class _InscricaoState extends State<Inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          "Inscrições",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
