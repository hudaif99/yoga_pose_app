import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/auth/login/page.dart';
import 'package:yoga_pose/util/asset_constants.dart';
import 'package:yoga_pose/util/color_constants.dart';
import 'package:yoga_pose/util/screenAwareSize.dart';
import 'package:yoga_pose/widgets/elevated_button.dart';

import '../sign_up/page.dart';

class LoginOrSignUpPage extends StatefulWidget {
  const LoginOrSignUpPage({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUpPage> createState() => _LoginOrSignUpPageState();
}

class _LoginOrSignUpPageState extends State<LoginOrSignUpPage> {
  // final LoginPresenter _presenter = BasicLoginPresenter();

  // @override
  // void initState() {
  //   super.initState();
  //   _presenter.onViewAttached(this);
  // }
  //
  // @override
  // void dispose() {
  //   _presenter.onViewDetached();
  //   super.dispose();
  // }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context). size.width,
        decoration: const BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ColorConstants.gradient3
        )),
        child: Column(
          children:  [
            const SizedBox(height: 40,),
            Image.asset(
              AssetConstants.logo, 
              width: 300, 
              height: screenAwareSize(180, context)
            ),
            Image.asset(
                AssetConstants.yogaImage1,
                width: 350,
                height: screenAwareSize(280, context)
            ),
            const Spacer(),
            MyElevatedButton(
              label: 'Create new account',
              onTap: (){
                _modalBottomSheetMenu(context,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Create new account', style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500,
                          fontFamily: 'Playfair Display'
                        ),),
                        const SizedBox(height: 50,),
                        MyElevatedButton(
                            label: "Signup with LinkedIn",
                            onTap: (){},
                            icon: AssetConstants.linkedInLogo,
                            bgColor: Colors.blue[800],
                            fgColor: ColorConstants.white),
                        const SizedBox(height: 16),
                        MyElevatedButton(
                            label: "Signup with Google",
                            onTap: (){},
                            icon: AssetConstants.googleLogo,
                            bgColor: ColorConstants.white,
                            fgColor: ColorConstants.black),
                        const SizedBox(height: 16),
                        MyElevatedButton(
                            label: "Signup with Email",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupFormPage()) );
                            },
                            icon: AssetConstants.emailLogo,
                            )
                      ],
                    )
                );
              },
              bgColor: ColorConstants.white,
              fgColor: ColorConstants.black,
            ),
            const SizedBox(height: 18),
            MyElevatedButton(
              label: 'Log in',
              onTap: (){
                _modalBottomSheetMenu(context,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Login', style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500,
                          fontFamily: 'Playfair Display'
                        ),),
                        const SizedBox(height: 50,),
                        MyElevatedButton(
                            label: "Sign in with LinkedIn",
                            onTap: (){},
                            icon: AssetConstants.linkedInLogo,
                            bgColor: Colors.blue[800],
                            fgColor: ColorConstants.white),
                        const SizedBox(height: 16,),
                        MyElevatedButton(
                            label: "Sign in with Google",
                            onTap: (){},
                            icon: AssetConstants.googleLogo,
                            bgColor: ColorConstants.white,
                            fgColor: ColorConstants.black),
                        const SizedBox(height: 16),
                        MyElevatedButton(
                            label: "Sign in with Email",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginFormPage()));
                            },
                            icon: AssetConstants.emailLogo,
                            )
                      ],
                    )
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void _modalBottomSheetMenu(context, items){
    showModalBottomSheet(
      // isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            )),
        builder: (builder){
          return  Container(
            // height: 330.0,
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
                gradient: LinearGradient(
                  colors: ColorConstants.gradient2,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )),
            child: items
          );
        }
    );
  }

  // @override
  // void onSetProgress(bool value) {
  //   // TODO: implement onSetProgress
  // }
  //
  // @override
  // void onShowMessage(String msg) {
  //   // TODO: implement onShowMessage
  // }
}
