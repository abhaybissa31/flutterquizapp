import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn(this.Answer, this.btnPressed, {super.key});

  final void Function() btnPressed;
  final String Answer;

  @override
  Widget build(context) {
    print('button click');
    return ElevatedButton(
      
      onPressed: btnPressed,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40) ,
          backgroundColor:const Color.fromARGB(255, 16, 1, 177),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45),),
          ),
          child: Text(Answer,textAlign: TextAlign.center,),
    );
  }
}
