import 'package:flutter/material.dart';
import 'package:yoga_pose/util/asset_constants.dart';
import 'package:yoga_pose/util/color_constants.dart';
import 'package:yoga_pose/widgets/elevated_button.dart';

class YogaDetailsPage extends StatefulWidget {
  final String image;
  final String title;
  final String duration;
  final String level;

  const YogaDetailsPage({Key? key, required this.image, required this.title,
    required this.duration, required this.level}) : super(key: key);

  @override
  State<YogaDetailsPage> createState() => _YogaDetailsPageState();
}

class _YogaDetailsPageState extends State<YogaDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          label: "Let's do it",
          onTap: () {},
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.image),
              const SizedBox(height: 8,),
              Text(widget.title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
              const SizedBox(height: 8,),
              Text(widget.duration),
              const SizedBox(height: 8,),
              Text(widget.level),
              const SizedBox(height: 20,),
              const Text('Description', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              const SizedBox(height: 8,),
              Text(_description),
              const SizedBox(height: 16,),
              const Text('Asanas', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
              const SizedBox(height: 10,),
              ListView.builder(padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index){
                 return Container(
                     margin: const EdgeInsets.only(bottom: 10),
                     child: _card());
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(){
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF3F3F3)
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(AssetConstants.yogaImg, width: 64, height: 80, fit: BoxFit.cover,)),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Lorem ipsum dolor sit', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),),
              SizedBox(height: 7,),
              Text('15 Seconds')
            ],
          )
        ],
      ),
    );
  }

  final String _description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  Donec aliquet pellentesque leo quis ullamcorper. Curabitur euismod, urna sit amet tincidunt elementum''';
}
