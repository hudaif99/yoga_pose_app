import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yoga_pose/screens/auth/login/forgot_password/create_new_password/page.dart';
import 'package:yoga_pose/widgets/elevated_button.dart';

class OtpValidationPage extends StatefulWidget {
  const OtpValidationPage({Key? key}) : super(key: key);

  @override
  State<OtpValidationPage> createState() => _OtpValidationPageState();
}

class _OtpValidationPageState extends State<OtpValidationPage> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType> errorController = StreamController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
              const SizedBox(height: 8),
              const Text('Enter the OTP sent to your mail:', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 8),
              const Text('jhondoe@yahoo.com', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 30,),
              pinCodeField(),
              const SizedBox(height: 30,),
              const Text("Didn't receive a code?", style: TextStyle(fontSize: 17),),
              InkWell(
                onTap: (){},
                child: const Text('Resend', style: TextStyle(decoration: TextDecoration.underline, fontSize: 17),),
              ),
              const Spacer(),
              MyElevatedButton(
                  label: "Verify",
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateNewPasswordPage()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget pinCodeField(){
    return PinCodeTextField(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      length: 4,
      obscureText: false,
      appContext: context,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(borderWidth: 0.5,
        activeColor: Colors.grey,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 45,
        fieldWidth: 45,
        activeFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      keyboardType: TextInputType.number,
      // enableActiveFill: true,
      errorAnimationController: errorController,
      controller: textEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
        print(value);
        setState(() {
          currentText = value;
        });
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
