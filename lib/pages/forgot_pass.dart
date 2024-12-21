import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedsnap/pages/login_page.dart';
import 'package:wedsnap/util/my_input_field.dart';
import 'package:wedsnap/util/mybutton.dart';


class ForgotPass extends StatelessWidget {
  final TextEditingController email = TextEditingController();
   ForgotPass({super.key});

forgotPass()async{
  await FirebaseAuth.instance.sendPasswordResetEmail(email:email.text);
}

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
                    MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 28,
                )),
            Text(
              "Forgot Password",
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
              'Enter email address to get the \npassword reset link.',
              style: TextStyle(color: Colors.grey,fontFamily: GoogleFonts.poppins().fontFamily,),
            ),
            SizedBox(
              height: 75,
            ),
            Text(
              "Email Address",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 18),
            ),
            //email Input field
            SizedBox(
              height: 10,
            ),
            MyInputField(
                hintText: "Hello@example.com",
                suffixIcon: Icons.email,
                obscureText: false, controller: email,),
                SizedBox(
              height: 90,
            ),
                Center(
                  child: Mybutton(
                    onPressed: (()=> forgotPass()),
                    text: 'Password reset'
                    ),
                ),
                SizedBox(height: 150,),
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
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 16,
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
