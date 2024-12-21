import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedsnap/pages/forgot_pass.dart';
import 'package:wedsnap/util/my_input_field.dart';
import 'package:wedsnap/util/mybutton.dart';

class ResetPass extends StatelessWidget {
  final TextEditingController password = TextEditingController();
  final TextEditingController repassword = TextEditingController();
  ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ForgotPass()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 28,
                )),
            Text(
              "Reset Password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter your new password twice below to \nreset your new password.',
              style: TextStyle(color: Colors.grey, fontFamily: GoogleFonts.poppins().fontFamily,),
            ),
            SizedBox(
              height: 75,
            ),
            Text(
              "Enter new password",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: GoogleFonts.poppins().fontFamily,),
            ),
            //new pass Input field
            SizedBox(
              height: 10,
            ),
            
            MyInputField(
                hintText: "Type here",
                suffixIcon: Icons.remove_red_eye,
                obscureText: true, controller: password,),

                //re-enter new pass Input field
            SizedBox(
              height: 10,
            ),
            Text(
              "Re-enter new password",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: GoogleFonts.poppins().fontFamily,),
            ),
            SizedBox(
              height: 10,
            ),
            MyInputField(
                hintText: "Type here",
                suffixIcon: Icons.remove_red_eye,
                obscureText: true, controller: repassword,),
                SizedBox(
              height: 30,
            ),
                Center(
                  child: Mybutton(
                    onPressed: (){
                      //my button
                    }, 
                    text: 'Password reset'
                    ),
                ),
                SizedBox(height: 100,),
                Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Create an account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
