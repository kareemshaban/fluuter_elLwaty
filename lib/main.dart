import 'package:flutter/material.dart';
import 'package:list_wheel_scroll_view_nls/list_wheel_scroll_view_nls.dart';
import 'package:untitled/color_container.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListWheelScrollView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Wheel(),
    );
  }
}

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  List<String> stages = [
    'الاول الابتدائي' ,
    'الثاني الابتدائي',
    'الثالث الابتدائي',
    'الرابع الابتدائي',
    'الخامس الابتدائي',
    'السادس الابتدائي',
  ];
  String current_txt = '';

  void UpdateText(String txt){
    setState(() {
      current_txt = txt;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Scroll View"),
        backgroundColor: Colors.white,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(current_txt),
            Center(
              child: Container(
                height: 250,
                child: ListWheelScrollViewX(
                    onSelectedItemChanged: (i) {
                      UpdateText(stages[i]);
                    },
                    scrollDirection: Axis.horizontal,
                    squeeze: .5,
                    diameterRatio: .6,
                    overAndUnderCenterOpacity: .7,
                    itemExtent: 100, children: getChildren()




                ),
              ),
            ),
          ],


        ),
      ),

    );
  }

  List<Widget> getChildren(){
    List<Widget> childs = [];
    for(int i = 0 ; i < stages.length ; i++){
      childs.add(ColoredContainer(Colors.red , stages[i]));
    }
    return childs ;
  }
}
