// import 'package:flutter/material.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';
// import 'package:snapping_list/product.dart';
//
// void main() {
//   runApp( MyApp());
// }
//
// class MyApp extends StatefulWidget {
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(child:SnappingList()),
//     );
//   }
// }
// class Product {
//   String title;
//   Product({
//     required this.title,
//   });
// }
//
// class SnappingList extends StatefulWidget {
//
//   @override
//   State<SnappingList> createState() => _SnappingListState();
// }
//
// class _SnappingListState extends State<SnappingList> {
//   List<Product> productList = [
//     Product( title: 'الاول الابتدائي', ),
//     Product( title: 'الثاني الابتدائي'),
//     Product( title: 'الثالث الابتدائي'),
//     Product( title: 'الرابع الابتدائي'),
//     Product( title: 'الخامس الابتدائي'),
//     Product( title: 'السادس الابتدائي'),
//   ];
//
//
//   var current_text = "" ;
//
//   void UpdateText(String txt){
//     setState(() {
//       current_text = txt;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Container(
//         decoration:BoxDecoration(gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.yellow,Colors.orange]
//         )),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(current_text),
//             SizedBox(height: 150,),
//             Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                       child:  Container(
//                         height: 250,
//                         child: ScrollSnapList(
//                           itemBuilder: _buildListItem,
//                           itemCount: productList.length,
//                           itemSize: 150,
//                           onItemFocus: (index) {
//                             // print(index);
//                             UpdateText(productList[index].title);
//                             // print(current_text);
//                           },
//                           dynamicItemSize: true,
//                         ),
//                       )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildListItem(BuildContext context, int index) {
//     Product product = productList[index];
//     var name=product.title;
//     return Container(
//       width: 150,
//       height: 300,
//       child: Card(
//         elevation: 12,
//         child: ClipRRect(
//           borderRadius:  BorderRadius.all(Radius.circular(10)),
//           child: Center(
//             child: Text("${name}"),
//           ),
//         ),
//       ),
//     );
//   }
// }
