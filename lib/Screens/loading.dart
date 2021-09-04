import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'addtask.dart';

class Loading_Screen extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  State<Loading_Screen> createState() => _Loading_ScreenState();
}

class _Loading_ScreenState extends State<Loading_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4FC3F7),
         centerTitle: true,
        title: Shimmer.fromColors(
        baseColor: Colors.pinkAccent,
        highlightColor: Colors.yellow,
        child: Text(
          'WorkToDo',
          style: GoogleFonts.asul(
            textStyle: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
            )
          )
        ),
      ),
      ),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.add,
      color: Colors.white,
      size: 30,),
      onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=> const AddTask());
      },
    ),
      body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.cyanAccent
          ]
        )
      ),
      ),
    );
  }
}
