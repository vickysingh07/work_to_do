import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Task_tile extends StatelessWidget {
  bool isChecked = true;
  String taskname = "";
  Function checkboxinterchange;

  Task_tile({required this.isChecked, required this.taskname, required this.checkboxinterchange});
   @override
  Widget build(BuildContext context) {
    return ListTile(
          title: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.grey)))),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(taskname,
                  style: GoogleFonts.alice(
                      decoration: (isChecked)? TextDecoration.lineThrough : null,
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.limeAccent
                  )
                  ),),
             Theme(
               data: ThemeData(unselectedWidgetColor: Colors.white),
               child: Checkbox(
                   activeColor: Colors.white,
                   checkColor: Colors.redAccent,
                   value: isChecked, onChanged: (newValue){
                     checkboxinterchange(newValue);
               },
             )
            ),]
          )
     ));
        }
}

