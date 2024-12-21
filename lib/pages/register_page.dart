import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedsnap/util/my_input_field.dart';
import 'package:wedsnap/util/mybutton.dart';
import 'package:wedsnap/wrapper.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  RegisterPage({super.key});

  signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
    Get.offAll(Wrapper());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                  ),
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyInputField(
                  hintText: "Type here",
                  suffixIcon: Icons.remove_red_eye,
                  obscureText: false,
                  controller: name,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Email Address",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyInputField(
                  hintText: "Hello@example.com",
                  suffixIcon: Icons.remove_red_eye,
                  obscureText: false,
                  controller: email,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyInputField(
                  hintText: "Type here",
                  suffixIcon: Icons.remove_red_eye,
                  obscureText: true,
                  controller: password,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Mybutton(
                    onPressed: (() => signUp()),
                    text: 'Sign up',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    children: [
                      Text(
                        "By continuing you agree to our ",
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "terms & conditions",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: MaterialButton(
                    minWidth: 300,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Continue with Google',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account, ",
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sign in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
