import 'package:flutter/material.dart';
import 'package:yoga_pose/widgets/elevated_button.dart';
import 'package:yoga_pose/widgets/text_field.dart';

class SignupFormPage extends StatefulWidget {
  const SignupFormPage({Key? key}) : super(key: key);

  @override
  State<SignupFormPage> createState() => _SignupFormPageState();
}

class _SignupFormPageState extends State<SignupFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: MyElevatedButton(
          label: 'Create account',
          onTap: (){
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
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
                    child: Text('Create new account',
                      style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500,
                          fontFamily: 'Playfair Display'
                      ),),
                  ),
                ),
                const Text('Enter your full name', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 8,),
                const MyTextField(),
                const SizedBox(height: 16,),
                const Text('Enter your email id', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 8,),
                const MyTextField(),
                const SizedBox(height: 16,),
                const Text('Enter new password', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 8,),
                const MyTextField(isPassword: true,),
                const SizedBox(height: 16,),
                const Text('Confirm password', style: TextStyle(fontSize: 16),),
                const SizedBox(height: 8,),
                const MyTextField(isPassword: true,),
                const SizedBox(height: 100,),
                // MyElevatedButton(
                //   label: 'Create account',
                //   onTap: (){
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
