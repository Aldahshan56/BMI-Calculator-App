import 'package:app_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'bmi_result.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}
class _BmiCalculatorState extends State<BmiCalculator> {
  int height=150;
  int age=1;
  int weight=50;
  bool isMale=true;
  bool isFemale=false;

  void resetValues() {
    setState(() {
      isMale = false;
      isFemale = false;
      age = 1;
      weight = 50;
      height = 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1d1e33),
      appBar: AppBar(
        backgroundColor: const Color(0xff1d1e33),
        title: const Text("BMICALCULATOR",style: TextStyle(color:Colors.white,fontSize: 25),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: (){
                  setState(() {
                    isMale=false;
                    isFemale=false;
                    age=1;
                    weight=50;
                    height=150;
                  });
                }
                , icon: const Icon(Icons.refresh,size: 28,color: Colors.white,)
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                            isMale=true;
                            isFemale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (isMale)?const Color(0xffeb1555):const Color(0xff0b0c21),//const Color(0xffeb1555),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male_outlined,color:Colors.white,size: 100,),
                              Text("Male",style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                            isFemale=true;
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (isFemale)?const Color(0xffeb1555):const Color(0xff0b0c21),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female_outlined,color:Colors.white,size: 100,),
                              Text("Female",style: TextStyle(color: Colors.white,fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
            const SizedBox(height: 10,),
            Expanded(
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff0b0c21),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Height",style: TextStyle(color: Colors.white,fontSize: 17),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),style: const TextStyle(color: Colors.white,fontSize: 45),),
                          const SizedBox(width: 5,),
                          const Text("cm",style: TextStyle(color: Colors.white70,fontSize: 20),),
                        ],
                      ),
                      Slider(
                          value:height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: const Color(0xffeb1555),
                          inactiveColor: const Color(0xff525365),
                          onChanged:(value){
                            setState(() {
                              height=value.toInt();
                            });
                          }
                      )
                    ],
                  ),
                )
            ),
            const SizedBox(height: 10,),
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff0b0c21),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Text("Age",style: TextStyle(color: Colors.white,fontSize: 17),),
                             Text(age.toString(),style: const TextStyle(color: Colors.white,fontSize: 50),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        (age>0)?age--:age=0;
                                      });
                                    },
                                  backgroundColor: const Color(0xff1d1e33),
                                  heroTag: "-age",
                                  child:const Icon(Icons.remove,size: 35,color: Colors.white,),
                                ),
                                const SizedBox(width: 20,),
                                FloatingActionButton(
                                  heroTag: "+age",
                                  onPressed:(){
                                    setState(() {
                                      if(age>=0){
                                        age++;
                                      }
                                    });
                                  },
                                  backgroundColor: const Color(0xff1d1e33),
                                  child:const Icon(Icons.add,size: 35,color: Colors.white,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff0b0c21),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Weight",style: TextStyle(color: Colors.white,fontSize: 17),),
                            Text(weight.toString(),style: const TextStyle(color: Colors.white,fontSize: 50),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: "-weight",
                                  onPressed:(){
                                    setState(() {
                                      (weight>0)?weight--:weight=50;
                                    });
                                  },
                                  backgroundColor: const Color(0xff1d1e33),
                                  child:const Icon(Icons.remove,size: 35,color: Colors.white,),
                                ),
                                const SizedBox(width: 20,),
                                FloatingActionButton(
                                  heroTag: "+weight",
                                  onPressed:(){
                                    setState(() {
                                      if(weight>0){
                                        weight++;
                                      }
                                    });
                                  },
                                  backgroundColor: const Color(0xff1d1e33),
                                  child:const Icon(Icons.add,size: 35,color: Colors.white,),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            const SizedBox(height: 10,),
            CustomButton(
              text:'Calculate',
              onPressed:(){
                double result;
                double heightInMeter=height/100;
                result=weight/(heightInMeter*heightInMeter);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Results(result: result,restart:resetValues,)));
              },),

          ],
        ),
      ),
    );
  }
}
