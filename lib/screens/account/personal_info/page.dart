import 'package:flutter/material.dart';

import '../../../util/color_constants.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Personal Information', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
              const SizedBox(height: 20,),
              const CircleAvatar(
                radius: 60,
                child: Text('JD',style: TextStyle(fontSize: 30),),),
              const SizedBox(height: 40,),
              _detailsCard('Name', 'Jhon Doe'),
              const Divider(thickness: 0.7,),
              _detailsCard('Age', '48'),
              const Divider(thickness: 0.7,),
              _detailsCard('Gender', 'Male'),
              const Divider(thickness: 0.7,),
              _detailsCard('Height', '171 Cm'),
              const Divider(thickness: 0.7,),
              _detailsCard('Weight', '72 Kg'),
              const Divider(thickness: 0.7,),
              _detailsCard('BMI', '24.6')
            ],
          ),
        ),
      ),
    );
  }
  Widget _detailsCard(leading, trailing){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(leading, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
        // const Spacer(),
        Text(trailing, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
