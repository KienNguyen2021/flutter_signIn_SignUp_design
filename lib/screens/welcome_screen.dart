import 'package:flutter/material.dart';
import 'package:sign_up/screens/signin_screen.dart';
import 'package:sign_up/screens/signup_screen.dart';
import 'package:sign_up/theme/theme.dart';
import 'package:sign_up/widgets/custom_scaffold.dart';
import 'package:sign_up/widgets/welcome_button.dart';


class WelcomeScreen extends StatelessWidget {

  
  
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //return const Text('Welcome screen');
    
    return CustomScaffold(
       //child: Text("Welcome ! Welcome screen"),

       child:  Column(
             children: [

                Flexible(

                  flex: 8,     // to divide into parts 

                child : Container(
                   padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0,), 

                 child: Center(
                     child: RichText(
                        textAlign : TextAlign.center,
                        text: const TextSpan(
                           children: [
                              TextSpan(
                               text: 'Welcome !!!\n', style: TextStyle(fontSize: 45.5, fontWeight: FontWeight.w600,)
                              ),
                 
                              TextSpan(
                               text: '\nEnter personal details to your account', style: TextStyle(fontSize: 20.0,)
                                    )
                                    ]
                                ),
                              ),   
                            ),
                          ),
                        ),


                 Flexible(

                       flex: 1,     // to divide into parts 

                      child: Align(
 
                                  alignment: Alignment.bottomRight,     // to put 2 boxes align at bottom
 
                              child: Row(
                        
                                        children: [
                      
                                      //WelcomeButton(),
                                      //WelcomeButton(),
                      
                                    const Expanded(
                                        child: WelcomeButton(
                                              buttonText: 'Sign In',
                                              onTap: SignInScreen(),
                                              color: Colors.transparent,
                                              textColor: Colors.white,),),

                                   Expanded(
                                         child: WelcomeButton(
                                                 buttonText: 'Sign Up',
                                                 onTap: const SignUpScreen(),

                                                 color: Colors.white,
                                                 textColor: lightColorScheme.primary,    // from theme.dart folder

                                                 ),),
                                           ],
                                         ),
                                   ),
                                  ),
                               ],

                       ),
      
    );

  }
}