import 'package:flutter/material.dart';
import 'package:pakehttp/repository.dart';

import 'addimigrant.dart';
import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Blog> listblog = [];
  repository repo = repository();

  getData() async {
    listblog = await repo.getData();
    setState(() {});
  }

  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("ambil data dari api"),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Navigator.of(context).popAndPushNamed('/addimigrant');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const addimigrant()));
                },
              ),
            ],
          ),
          body:
              //  Column(
              // children: [
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.of(context).popAndPushNamed('/addimigrant');
              //     },
              //     child: Text("Tambah")),
              ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(listblog[index].name),
                          Text(listblog[index].country_of_origin)
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: listblog.length),
          // ],
          // ),
        ),
        routes: {
          '/addimigrant': (context) => const addimigrant(),
        });
  }
}
