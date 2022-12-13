import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/auth/login/forgot_password/otp_validation/page.dart';

import '../../../../widgets/elevated_button.dart';
import '../../../../widgets/text_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios, size: 20)),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child:  Align(
                  alignment: Alignment.center,
                  child: Text('Reset password',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500
                    ),),
                ),
              ),
              const Text('Enter your email id', style: TextStyle(fontSize: 16),),
              const SizedBox(height: 8,),
              const MyTextField(),

              const Spacer(),
              MyElevatedButton(
                label: 'Reset password',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpValidationPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
