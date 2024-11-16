

import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(

        appBar: AppBar(

               iconTheme: const IconThemeData(color: Colors.white),    // change color text on AppBar 

               backgroundColor: Colors.transparent,
               elevation :1.0, 

        ),

        extendBodyBehindAppBar : true,  //  to cover the picture 
          
        body: Stack(

          children: [
            Image.asset('assets/images/bg1.png', fit: BoxFit.cover, width: double.infinity,height: double.infinity,), // cover the whole screen

             
             SafeArea(
              
              child: child!,
            
            //Text("Welcome ! screen Welcome"),
            
            
            ),


          ],



        ),


    );




  }
}