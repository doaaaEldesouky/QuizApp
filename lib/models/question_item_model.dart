import 'package:basics/models/answer_item_model.dart';
import 'package:flutter/material.dart';

class QuestionItemModel
{
  final String title;
  final List<AnswerItemModel> Availableanswers;

  QuestionItemModel({required this.Availableanswers, required this.title});

}
List<QuestionItemModel> questions=[
 QuestionItemModel(title: "What is your favourite sport ?",Availableanswers: [
   AnswerItemModel(title: 'football', onPressed:() =>debugPrint("football choice") ,),
   AnswerItemModel(title: 'BasketBall', onPressed:() =>debugPrint("BasketBall choice") ,),
   AnswerItemModel(title: 'Tennis', onPressed:() =>debugPrint("Tennis choice"), ),
   AnswerItemModel(title: 'VolleyBall', onPressed:() =>debugPrint("VolleyBall choice") ,),
 ]),
  QuestionItemModel(title: "What is your favourite animal?",Availableanswers:[
    AnswerItemModel(title: 'Cat', onPressed:() =>debugPrint("Cat choice") ,),
    AnswerItemModel(title: 'Tiger', onPressed:() =>debugPrint("Tiger choice") ,),
    AnswerItemModel(title: 'Lion', onPressed:() =>debugPrint("Lion choice") ,),
    AnswerItemModel(title: 'Dog', onPressed:() =>debugPrint("Dog choice") ,),
  ] ),
  QuestionItemModel(title: "What is your favourite Subject?",
  Availableanswers: [
    AnswerItemModel(title: 'Math', onPressed:() =>debugPrint("Math choice") ,),
    AnswerItemModel(title: 'Arabic', onPressed:() =>debugPrint("Arabic choice") ,),
    AnswerItemModel(title: 'English', onPressed:() =>debugPrint("English choice") ,),
    AnswerItemModel(title: 'Science', onPressed:() =>debugPrint("Science choice") ,),
  ]),
  QuestionItemModel(title: "What is your favourite color?",Availableanswers: [
    AnswerItemModel(title: 'Red', onPressed:() =>debugPrint("Red choice") ,),
    AnswerItemModel(title: 'Green', onPressed:() =>debugPrint("Green choice") ,),
    AnswerItemModel(title: 'Blue', onPressed:() =>debugPrint("Blue choice") ,),
    AnswerItemModel(title: 'Black', onPressed:() =>debugPrint("Black choice") ,),

  ]),

];