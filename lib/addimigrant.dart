import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class addimigrant extends StatefulWidget {
  const addimigrant({Key? key}) : super(key: key);

  @override
  State<addimigrant> createState() => _addimigrantState();
}

class _addimigrantState extends State<addimigrant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Orang"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Negara Asal'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}
