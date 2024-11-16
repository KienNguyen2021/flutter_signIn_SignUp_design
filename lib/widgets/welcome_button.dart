

import 'package:flutter/material.dart';



class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, this.buttonText, this.onTap, this.color, this.textColor });


    final String? buttonText;
    final Widget? onTap;
    final Color? color;
    final Color? textColor;


  @override
  Widget build(BuildContext context) {


    return GestureDetector(

      //added on tap for button :

      onTap: () {

          Navigator.push(context, MaterialPageRoute(builder: (e) => onTap!,),); 
            } ,

      child: Container(

        padding: const EdgeInsets.all(15.0),
                
        decoration:  BoxDecoration(
      
              color: color!,
              borderRadius: const  BorderRadius.only(
              topLeft: Radius.circular(50),)  
      
              ),
      
        child: Text(
          
          buttonText!,
          textAlign: TextAlign.center,   // the text in center of 2 buttons

          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color : textColor!, ),)
          
        ),
    );
  }
}