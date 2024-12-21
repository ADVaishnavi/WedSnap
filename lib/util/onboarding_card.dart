import 'package:flutter/material.dart';
import 'package:wedsnap/pages/register_page.dart';
import 'package:wedsnap/pages/login_page.dart';
import 'package:wedsnap/util/mybutton.dart';


class OnboardingCard extends StatelessWidget {
  final String image;

  const OnboardingCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    //image size
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.90,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.65, 
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset(image,
            fit: BoxFit.cover,),
          ),

          //welcome text
          Spacer(), 
          Column(            
            children: [
            Text("Welcome to the app",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),)
          ],),
          SizedBox(height: 20,),

          //button
          Mybutton(text: "login", onPressed: () { 
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>LoginPage()
            )
            );
           },
           ),
            SizedBox(height: 20,),

            //create account text
              Column(
    children: [
      GestureDetector(
        onTap: () {
          // Navigate to RegisterPage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        },
        child: Text(
          "Create an account",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    ],
  ),
        ],
      ),
    );
  }
}