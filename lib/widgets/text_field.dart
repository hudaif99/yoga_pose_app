import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final bool? isPassword;
  const MyTextField({Key? key, this.isPassword}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    if(widget.isPassword == true){
      return passwordField();
    }else{
      return nonPasswordField();
    }
  }

  Widget nonPasswordField(){
    return SizedBox(
      height: 50,
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFE5E5E5),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
        ),
      ),
    );
  }

  Widget passwordField(){
    return SizedBox(
      height: 50,
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFE5E5E5),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: (){
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
          )
        ),
      ),
    );
  }
}
