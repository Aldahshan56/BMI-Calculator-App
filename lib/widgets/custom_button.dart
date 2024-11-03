import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,required this.onPressed,this.height=55});
  final String text;
  final double height;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ,
      width:double.infinity ,
      child: ElevatedButton(
          onPressed:onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffeb1555),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          child:Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),)
      ),
    );
  }
}
