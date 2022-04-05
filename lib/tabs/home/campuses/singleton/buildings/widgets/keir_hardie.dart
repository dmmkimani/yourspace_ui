import 'package:flutter/material.dart';
import 'package:project/server/server.dart';
import 'package:project/tabs/home/screens/building/building.dart';

class KeirHardie extends StatelessWidget {
  final Server _server;

  const KeirHardie(this._server, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Building(_server, 'keir_hardie')));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/buildings/keir_hardie.jpg',
            width: double.infinity,
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Keir Hardie',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
