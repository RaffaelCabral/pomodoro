// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final IconData icone;
  final String texto;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.icone,
    required this.texto,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(fontSize: 25),
        backgroundColor: Colors.black,
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 35,
              color: Colors.white,
            ),
          ),
          Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
