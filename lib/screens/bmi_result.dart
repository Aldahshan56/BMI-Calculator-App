import 'package:app_2/screens/bmi_first_screen.dart';
import 'package:app_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class Results extends StatelessWidget {
  const Results({super.key,required this.result,required this.restart});
  final double result;
  final VoidCallback restart;
  String getStatus(){
    if(result<=18.4){
      return "Status: UnderWeight";
    }
    else if( result>=18.5 && result<=24.9){
      return "Status: Normal";
    }
    else if( result>=25.0 && result<=39.9){
      return "Status: OverWeight";
    }
    else{
      return "Status: Obese";
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d1e33),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff1d1e33),
      ),
      body: Center(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2,),
            Text(getStatus(),style: const TextStyle(color:Colors.green,fontSize: 30),),
            const SizedBox(height: 20,),
            Text(result.toStringAsFixed(2),style: const TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            const Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                  text:"Recalculate",
                  onPressed:(){
                    restart();
                    Navigator.of(context).pop();
                  },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
