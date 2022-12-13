import 'package:flutter/material.dart';
import 'package:yoga_pose/util/color_constants.dart';

class MyElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color? bgColor;
  final Color? fgColor;
  final String? icon;
  const MyElevatedButton({Key? key, required this.label,
    required this.onTap, this.bgColor, this.fgColor,  this.icon}) : super(key: key);

  showImage(){
    if(icon != null){
      return Image.asset(icon!, width: 20, height: 20,);
    }else{
      return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 4,
          minimumSize: const Size(double.infinity, 50),
          maximumSize: const Size(double.infinity, 50),
          backgroundColor: bgColor ?? ColorConstants.primaryColor,
          foregroundColor: fgColor ?? ColorConstants.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
    ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showImage(),
            const SizedBox(width: 10,),
            Text(label, style: const TextStyle(fontSize: 16),),
          ],
        ),
    );
  }
}
