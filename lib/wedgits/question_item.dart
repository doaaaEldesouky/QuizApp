import 'package:basics/models/question_item_model.dart';
import 'package:flutter/material.dart';
class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(questionItem.title, style:
              Theme.of(context).textTheme.headlineMedium!.
              copyWith(color: Colors.black,
              )
          ),
          SizedBox(height: 12,),
          Text('Answer and get Points ',style: Theme.of(context).textTheme.headlineSmall!.
          copyWith(color: Colors.grey),)
        ],
      ),
    );
  }
}
