import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedsnap/pages/Register_page.dart';
import 'package:wedsnap/pages/home_page.dart';
import 'package:wedsnap/pages/otpverification.dart';
import 'package:wedsnap/util/my_input_field.dart';
import 'package:wedsnap/util/mybutton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  final TextEditingController email = TextEditingController();
  final TextEditingController password= TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

bool isloading =false;

  signin() async {
    setState(() {
      isloading = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
      // If login is successful, navigate to HomePage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),  // Replace this with your home page
    );
    }on FirebaseAuthException catch (e) {
      Get.snackbar("Oops!", e.code);
    }catch(e){
      Get.snackbar("Oops!", e.toString());
    }
    setState(() {
      isloading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0,);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return isloading?Center(child: CircularProgressIndicator(),): Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),

              //sign in text
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
              //welcome back text
              Text(
                'Welcome back to the app',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: Colors.grey,
                ),
              ),
              
              TabBar(
                controller: _tabcontroller,
                labelColor: Theme.of(context).colorScheme.tertiary,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Theme.of(context).colorScheme.tertiary,
                tabs: [
                  Tab(text: 'Email',),
                  Tab(text: 'Phone number',)
                ],
              ),
              //tab bar
              SizedBox(
                height: 260,
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    //login with email address
                    Container(
                      padding: EdgeInsets.all(20),
                      //color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //email text
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
                              obscureText: false, 
                              controller: email,),
                          SizedBox(
                            height: 10,
                          ),
                          //pass text
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 18),
                          ),
                          //pass Input field
                          SizedBox(
                            height: 10,
                          ),
                          MyInputField(
                              hintText: "Enter Password",
                              suffixIcon: Icons.remove_red_eye_rounded,
                              obscureText: true, 
                              controller: password,),
                          SizedBox(
                            height: 5,
                          ),
                          //forgot password text
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                //forgot password
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context)=> Otpverification()));
                              },
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    //login with phone number
                    Container(
                      padding: EdgeInsets.all(20),
                      //color: Colors.amber,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Phone number text
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 18),
                          ),
                          //phone number Input field
                          SizedBox(
                            height: 10,
                          ),
                          MyInputField(
                              hintText: "Enter Phone Number",
                              suffixIcon: Icons.phone,
                              obscureText: false, 
                              controller: phoneNumber,),
                          SizedBox(
                            height: 10,
                          ),
                          //pass text
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                                fontSize: 18),
                          ),
                          //pass Input field
                          SizedBox(
                            height: 10,
                          ),
                          MyInputField(
                              hintText: "Enter Password",
                              suffixIcon: Icons.remove_red_eye_rounded,
                              obscureText: true, 
                              controller: password,),
                          SizedBox(
                            height: 5,
                          ),
                          //forgot password text
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                //forgot password
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context)=> Otpverification()));
                              },
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //keep me sign in check box
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (val) {},
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                  ),
                  Text('keep me signed in',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //Sign in button
              Center(
                child: Mybutton(
                  onPressed:(()=>signin()),
                  text: "Sign in",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    //forgot password
                  },
                  child: Text(
                    'or Sign in with',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //continue with google button
              Center(
                child: MaterialButton(
                  minWidth: 300,
                  padding: EdgeInsets.all(12),

                  //color: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                  child: Text(
                    'Continue with Google',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,fontFamily: GoogleFonts.poppins().fontFamily,),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context)=> RegisterPage()));
                      },
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
      ),
    );
  }
}
