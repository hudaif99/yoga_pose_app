import 'package:flutter/material.dart';

import '../../../../../widgets/elevated_button.dart';
import '../../../../../widgets/text_field.dart';

class CreateNewPasswordPage extends StatefulWidget {
  const CreateNewPasswordPage({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordPage> createState() => _CreateNewPasswordPageState();
}

class _CreateNewPasswordPageState extends State<CreateNewPasswordPage> {
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
                padding: EdgeInsets.fromLTRB(0, 100, 0, 60),
                child:  Align(
                  alignment: Alignment.center,
                  child: Text('Create new password',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500
                    ),),
                ),
              ),
              const Text('Enter your new password', style: TextStyle(fontSize: 16),),
              const SizedBox(height: 8,),
              const MyTextField(isPassword: true,),
              const SizedBox(height: 16,),
              const Text('Confirm password', style: TextStyle(fontSize: 16),),
              const SizedBox(height: 8,),
              const MyTextField(isPassword: true,),
              const Spacer(),
              MyElevatedButton(
                label: 'Submit',
                onTap: (){
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
