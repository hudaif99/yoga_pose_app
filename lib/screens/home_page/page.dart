import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/yoga_details/page.dart';
import 'package:yoga_pose/util/asset_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Hello,\nJhon Doe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                const SizedBox(height: 20,),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                    itemBuilder: (BuildContext context, int index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => YogaDetailsPage(
                          image: _images[index], title: _names[index],
                          duration: _duration[index], level: _level[index],
                          )));
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: _card(index)),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _card(index){
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 5, 10, 5),
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: _colors[index],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_names[index], style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
                  const SizedBox(height: 6),
                  Text(_subNames[index])
                ],
              ),
            ),
            // const Spacer(),
            Image.asset(_images[index], width: 150, height: 150,)
          ],
        ),
      ),
    );
  }

  final List _names = const [
    'Padmasana',
    'Natarajasana',
    'Eka Pada \nRajakapotasana'
  ];

  final List _subNames = const [
    'Lotus position',
    'Dancer pose',
    'One-legged'
  ];

  final List _images = [
    AssetConstants.yogaImage1,
    AssetConstants.yogaImage2,
    AssetConstants.yogaImage3
  ];

  final List _colors = const [
    Color(0xFFC2D9B6),
    Color(0xFFE8E8E8),
    Color(0xFFD6D7F7),
  ];

  final List _duration = const [
    '6 Min',
    '4 Min',
    '2 Min'
  ];

  final List _level = const [
    'Beginner',
    'Intermediate',
    'Advanced'
  ];
}
