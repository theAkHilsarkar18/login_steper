import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_steper/screens/loginscreen/provider/loginprovider.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

Loginprovider? loginprovider;
Loginprovider? loginproviderTrue;

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {

    loginprovider = Provider.of(context,listen: false);
    loginprovider = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: Icon(Icons.all_inclusive, color: Colors.white, size: 30),
          title: Text("Login Stepper",
              style:
                  GoogleFonts.aBeeZee(color: Colors.white, letterSpacing: 1)),
        ),
        body: Stepper(
          currentStep: loginprovider!.i,
          onStepContinue: () => loginprovider!.onContinue(),
          onStepCancel: () => loginprovider!.onCancel(),
          steps: [
            Step(
              title:
                  Text("SignUp", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.cyan)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "Full Name*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.cyan),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Email*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.cyan),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.cyan),
                    ),
                  ),

                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Confirm Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_person_outlined,color: Colors.cyan),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Login", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.cyan)),
              content: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    decoration: InputDecoration(
                      labelText: "User Name*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      prefixIcon: Icon(Icons.person_outline,color: Colors.cyan),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.grey),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.cyan,
                    decoration: InputDecoration(
                      labelText: "Password*",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.cyan,width: 1.5),),
                      prefixIcon: Icon(Icons.lock_outline,color: Colors.cyan),
                    ),
                  ),
                ],
              ),
            ),
            Step(
              title:
              Text("Home", style: GoogleFonts.aBeeZee(letterSpacing: 1,color: Colors.cyan)),
              content: Text("Login Successful",style: GoogleFonts.aBeeZee(color: Colors.cyan,letterSpacing: 1)),
            ),

          ],
        ),
      ),
    );
  }
}
