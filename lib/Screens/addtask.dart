import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class AddTask extends StatelessWidget {
  Function addTaskCallback;
  AddTask({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      color: Colors.blueGrey,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
        ),
        child: Column(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.pinkAccent,
              highlightColor: Colors.yellow,
              child: Text(
                  'Add task to do',
                  style: GoogleFonts.asul(
                      textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      )
                  )
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 1, color: Colors.blue, style: BorderStyle.solid)),
              child: TextField(
                autofocus: true,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: 'Write Your Task',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black38
                  ),
                  border: InputBorder.none
                )
              ),
            ),
            const SizedBox(height: 18,),
            FloatingActionButton(
              backgroundColor: Colors.blue,
                child: const Icon(
                    Icons.check,
                size: 30,
                ),
                onPressed:(){
                addTaskCallback(
                    newTaskTitle);
            }
            )
          ],
        ),
      ),
    );
  }
}
