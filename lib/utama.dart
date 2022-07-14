// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Utama extends StatefulWidget {
//   const Utama({Key? key}) : super(key: key);

//   @override
//   State<Utama> createState() => _UtamaState();
// }

// class _UtamaState extends State<Utama> {
//   @override
//   Widget build(BuildContext context) {
     
//     Scaffold(
//           appBar: AppBar(
//             title: Text("ambil data dari api"),
//             actions: [
//               IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {
//                   // Navigator.of(context).popAndPushNamed('/addimigrant');
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const addimigrant()));
//                 },
//               ),
//             ],
//           ),
//           body:
//               //  Column(
//               // children: [
//               // ElevatedButton(
//               //     onPressed: () {
//               //       Navigator.of(context).popAndPushNamed('/addimigrant');
//               //     },
//               //     child: Text("Tambah")),
//               ListView.separated(
//                   itemBuilder: (context, index) {
//                     return Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(listblog[index].name),
//                           Text(listblog[index].country_of_origin)
//                         ],
//                       ),
//                     );
//                   },
//                   separatorBuilder: (context, index) {
//                     return Divider();
//                   },
//                   itemCount: listblog.length),
//           // ],
//           // ),
//         ),
//   }
    
  
// }