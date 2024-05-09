import 'package:flutter/material.dart';
class LandingPage extends StatelessWidget {

  const LandingPage(this.switchScreen,{super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assests/images/quiz-logo.png", width: 300,color: const Color.fromARGB(169, 255, 255, 255),),
          const SizedBox(height: 60,),
          const Text("Learning New Tech is fun", style: TextStyle(color: Color.fromARGB(255, 239, 184, 249), fontSize: 24,),),
          const SizedBox(height:20,),
          OutlinedButton.icon(onPressed: switchScreen,style: OutlinedButton.styleFrom(foregroundColor:Colors.white) ,label:const Text("Start Quiz"),icon:const Icon(Icons.arrow_forward_ios_outlined),)
        ],
      ),
    );
  }
}
