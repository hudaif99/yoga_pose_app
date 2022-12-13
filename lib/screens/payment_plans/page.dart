import 'package:flutter/material.dart';
import 'package:yoga_pose/util/asset_constants.dart';
import 'package:yoga_pose/widgets/elevated_button.dart';

import '../../util/color_constants.dart';

class PaymentPlanPage extends StatefulWidget {
  const PaymentPlanPage({Key? key}) : super(key: key);

  @override
  State<PaymentPlanPage> createState() => _PaymentPlanPageState();
}

class _PaymentPlanPageState extends State<PaymentPlanPage> {
  final Color _blueColor = const Color(0xFF8CBBF1);
  var n = 3;
  int selectedIndex = 0;
  final List _plans = const[
    'INR 49 / Week',
    'INR 129 / Month',
    'INR 649 / Annual'
  ];

  @override
  Widget build(BuildContext context) {

    var listOfContainers = <Padding>[];
    var list = List<int>.generate( n, (i) => i );
    list.forEach((i) {
      Color borderColor = (i == selectedIndex) ? _blueColor : Colors.white;
      var checkMark = (i == selectedIndex) ? Image.asset(AssetConstants.checked, fit: BoxFit.cover,) : const SizedBox();
      return listOfContainers.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
              },
              child: Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: borderColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5, color: _blueColor)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 0.5, color: _blueColor)
                      ),
                      child: checkMark,
                    ),
                    const SizedBox(width: 30,),
                    Text(_plans[i], style: const TextStyle(fontSize: 20),)
                  ],
                ),
              ),)
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios, size: 20, color: ColorConstants.black,)),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: MyElevatedButton(
          label: 'Continue',
          onTap: (){},),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Choose your plan', style: TextStyle(fontSize: 26),),
              Image.asset(AssetConstants.yogaImage4, height: 260,),
              Column(
                children: listOfContainers,
              )
            ],
          ),
        ),
      ),
    );
  }




  // Widget _card(plan){
  //   return GestureDetector(
  //     // onTap: (){
  //     //   _isSelected = !_isSelected;
  //     //   setState(() {});
  //     // },
  //     child: Container(
  //       height: 100,
  //       width: double.infinity,
  //       padding: const EdgeInsets.all(20),
  //       decoration: BoxDecoration(
  //         color: _isSelected ? _blueColor : Colors.transparent,
  //         borderRadius: BorderRadius.circular(10),
  //         border: Border.all(width: 0.5, color: _blueColor)
  //       ),
  //       child: Row(
  //         children: [
  //           Container(
  //             height: 20,
  //             width: 20,
  //             decoration: BoxDecoration(
  //                 color: _isSelected ? Colors.white : Colors.transparent,
  //               borderRadius: BorderRadius.circular(30),
  //               border: Border.all(width: 0.5, color: _blueColor)
  //             ),
  //             child: _isSelected ? Image.asset(AssetConstants.checked, fit: BoxFit.cover,) : const SizedBox(),
  //           ),
  //           const SizedBox(width: 30,),
  //           Text(plan, style: const TextStyle(fontSize: 20),)
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
