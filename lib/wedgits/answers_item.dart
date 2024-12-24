import 'package:basics/models/answer_item_model.dart';
import 'package:flutter/material.dart';

class AnswersItem extends StatelessWidget {
    final AnswerItemModel answerMap;
    final VoidCallback questionIndexChange;
    final bool isAnswerChosen;
    AnswersItem({super.key,required this.answerMap, required this.questionIndexChange, required this.isAnswerChosen, });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(height: 60,
          width:double.infinity ,
          child: InkWell(
            onTap: (){
               answerMap.onPressed();
               questionIndexChange();



            },
            child: DecoratedBox(decoration: BoxDecoration(
                border: Border.all(color: Colors.black26,),
                borderRadius: BorderRadius.circular(8),
                color:isAnswerChosen? Colors.green:
                Colors.white,
                 ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(children: [
                    Icon(Icons.add,size: 30,color: isAnswerChosen?Colors.white:Colors.black,),
                  SizedBox(width:16 ,),
                  Text(answerMap.title, style:Theme.of(context).textTheme
                      .titleMedium!.copyWith(color: isAnswerChosen?Colors.white:Colors.black))
                  ],),
                ),
                ),
          )
    )
    );
        // ElevatedButton(
          //   onPressed:() {
          //     answerMap.onPressed();
          //     questionIndexChange();
          //
          //   },
    //         child: Text(answerMap.title,
    //           style: TextStyle(fontSize: 20,color: Colors.green),),)),
    // );
  }
}
