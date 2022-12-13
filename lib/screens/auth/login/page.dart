import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/auth/login/forgot_password/page.dart';
import 'package:yoga_pose/screens/page.dart';

import '../../../widgets/elevated_button.dart';
import '../../../widgets/text_field.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({Key? key}) : super(key: key);

  @override
  State<LoginFormPage> createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
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
                  child: Text('Login with email',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w700, fontFamily: 'Playfair Display'
                    ),),
                ),
              ),
              const Text('Enter your email id', style: TextStyle(fontSize: 16),),
              const SizedBox(height: 8,),
              const MyTextField(),
              const SizedBox(height: 16,),
              const Text('Enter your password', style: TextStyle(fontSize: 16),),
              const SizedBox(height: 8,),
              const MyTextField(isPassword: true),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordPage()));
                  },
                    child: const Text('Forgot your password?', style: TextStyle(decoration: TextDecoration.underline))),
              ),
              const Spacer(),
              MyElevatedButton(
                label: 'Login',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
