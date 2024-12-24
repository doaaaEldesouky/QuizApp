import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
class AnswerItemModel
{
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title,required this.onPressed});

}
// List<AnswerItemModel> answesOfQues=[
// AnswerItemModel(title: 'football', onPressed:() =>debugPrint("football choice") ,),
// AnswerItemModel(title: 'BasketBall', onPressed:() =>debugPrint("BasketBall choice") ,),
// AnswerItemModel(title: 'Tennis', onPressed:() =>debugPrint("Tennis choice"), ),
// AnswerItemModel(title: 'VolleyBall', onPressed:() =>debugPrint("VolleyBall choice") ,),
// ];
