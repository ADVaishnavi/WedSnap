import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wedsnap/pages/forgot_pass.dart';
import 'package:wedsnap/pages/login_page.dart';
import 'package:wedsnap/util/mybutton.dart';


class Otpverification extends StatelessWidget {
  const Otpverification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            IconButton(
              onPressed: (){
                //backbtn
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>LoginPage() )
                  );
              },
              icon: Icon(Icons.arrow_back,
              size: 28,)
              ),
              Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),
            ),
            SizedBox(height: 10,),
            Text('Enter verification code we just sent \nonyour phone number.',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),),
            SizedBox(height: 75,),
          
            //opt field
            Center(
              child: OtpTextField(
                numberOfFields: 4,
                fieldWidth: 50,
                borderColor: Colors.grey,
                focusedBorderColor: Theme.of(context).colorScheme.primary,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  // Handle OTP Verification
                },
              ),
            ),
            SizedBox(height: 50,),
            
            Center(
              child: Column(
                children: [
                  //veritfy btn
                  Mybutton(onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> ForgotPass(),
                        )
                      );
                  }, 
                  text: 'Verify'),
                  SizedBox(height: 20,),
                  Text('Resend OPT in 20s',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                  ),),
                  SizedBox(height: 20,),
                  GestureDetector(
                    child: Text('Resend OTP',
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        ),
        
    );
  }
}