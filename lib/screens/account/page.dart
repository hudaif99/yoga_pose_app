import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/account/personal_info/page.dart';
import 'package:yoga_pose/screens/auth/login_or_signup/page.dart';
import 'package:yoga_pose/screens/payment_plans/page.dart';
import 'package:yoga_pose/util/asset_constants.dart';
import 'package:yoga_pose/util/color_constants.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const CircleAvatar(
                  radius: 60,
                  child: Text('JD',style: TextStyle(fontSize: 30),),),
                const SizedBox(height: 20),
                const Text('Jhon Doe', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPlanPage()));
                  },
                  child: _card(),
                ),
                const SizedBox(height: 16,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalInfoPage()));
                    },
                    child: _listTile(AssetConstants.person, const Color(0xFFD7DDE9), 'Personal information')),
                const SizedBox(height: 5),
                const Divider(thickness: 0.4, indent: 10, endIndent: 10,),
                const SizedBox(height: 5),
                _listTile(AssetConstants.terms, const Color(0xFFFCEECB), 'Terms and Conditions'),
                const SizedBox(height: 5),
                const Divider(thickness: 0.4, indent: 10, endIndent: 10,),
                const SizedBox(height: 5),
                _listTile(AssetConstants.privacy, const Color(0xFFF9CEDF), 'Privacy Policy'),
                const SizedBox(height: 5),
                const Divider(thickness: 0.4, indent: 10, endIndent: 10,),
                const SizedBox(height: 5),
                _listTile(AssetConstants.aboutUs, const Color(0xFF8CBBF1), 'About Us'),
                const SizedBox(height: 5),
                const Divider(thickness: 0.4, indent: 10, endIndent: 10,),
                const SizedBox(height: 5),
                GestureDetector(
                    onTap:() {
                      _alertBox();
                    },
                    child: _listTile(AssetConstants.logOut, const Color(0xFFF4717F), 'Log out')),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(){
    return Container(
      height: 90,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: ColorConstants.gradient1,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        )
      ),
      child: Row(
        children: const [
          Text('Plans and Subscription', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
          Spacer(),
          CircleAvatar(
            backgroundColor: ColorConstants.white,
            radius: 18,
            child: Icon(Icons.keyboard_arrow_right_outlined),
          )
        ],
      ),
    );
  }

  Widget _listTile(String icon, Color color, String title){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 20,
        child: Image.asset(icon, width: 18, height: 18,),
      ),
      title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
    );
  }

  Future<void> _alertBox(){
    return  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey[100],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 8,
          title: const Text('Are you sure?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const [
                Text('Do you want to logout'),
              ],
            ),
          ),
          actions: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: ColorConstants.primaryColor),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
              ),
              child: const Text('Cancel', style: TextStyle(fontSize: 16),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
                style: TextButton.styleFrom(padding: const EdgeInsets.only(left: 15,right: 15),
                    foregroundColor: ColorConstants.white,backgroundColor: ColorConstants.primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
                child: const Text("Logout",style: TextStyle(fontSize: 16, color: ColorConstants.white)))
          ],
        );
      },
    );
  }
}
