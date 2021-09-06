import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work_to_do/widgets/task_list.dart';
import 'package:work_to_do/widgets/task_tile.dart';
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
        //backgroundColor: Colors.lightBlue,
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
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add,
      color: Colors.white,
      size: 30,),
      onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=> AddTask(

             newTaskTitle: '',addTaskCallback: (){},
        ));
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

        child:  const Task_List(),
      ),
    );
  }
}
