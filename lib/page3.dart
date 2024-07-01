import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 80),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Verification Code",style: TextStyle(fontSize: 40),),
            const SizedBox(height: 60,),
            const Text("  Enter The Verification Code:",style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: OtpTextField(mainAxisAlignment: MainAxisAlignment.center,
                fieldWidth: 35,
                fieldHeight: 35,
                numberOfFields: 6,
                enabledBorderColor: Colors.black,
                borderWidth: 1,
                margin: const EdgeInsets.all(5),
                showFieldAsBox: true,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(height: 30,width: 120,decoration: const BoxDecoration(color: Colors.black,),child: const Center(child: Text("Verify",style: TextStyle(color: Colors.white),)),),
            )
          ],
        ),
      ),
    ));
  }
}
