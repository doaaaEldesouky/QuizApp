import 'package:basics/models/answer_item_model.dart';
import 'package:basics/models/question_item_model.dart';
import 'package:basics/wedgits/answers_item.dart';
import 'package:basics/wedgits/question_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Index=0;
  int MytotalScore=0;
  late int answerChosen=-1;
  bool showTotalScore=false;
  int resultScore=questions.length *10;
  final bool isAnswerChosen=false;
  @override
  Widget build(BuildContext context) {
      debugPrint("Total Score :$MytotalScore");
      showTotalScore=(MytotalScore>=resultScore);
      return Scaffold(
        // appBar: AppBar(backgroundColor: Colors.green,
        //   title: Text("Home",
        //     style: TextStyle(color: Colors.white, fontSize: 24,),),),
        body:SafeArea(child: !showTotalScore?

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            QuestionItem(questionItem: questions[Index]),
            SizedBox(height: 30,),
            Column(
               children:List.generate(questions[Index].Availableanswers.length,
                   (index) => AnswersItem(answerMap:questions[Index].Availableanswers[index] ,
                       isAnswerChosen:answerChosen==index,
                       questionIndexChange: (){
                     setState(() {
                       answerChosen=index;
                     });
                       }),)
               //questions[index].Availableanswers.map((answerMap) =>
              //     AnswersItem(answerMap: answerMap, questionIndexChange: () {
              //
              //     }
              //     )
              // )
              //     .toList(),
            ),Spacer(),
            SizedBox(
              width: double.infinity,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all( 8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),)
                    ),
                      onPressed: (){
                        setState(() {
                          MytotalScore += 10;
                          answerChosen=-1;

                          if (Index + 1 < questions.length) {
                            Index++;
                          } else {
                            showTotalScore = true; // عرض النتيجة النهائية
                          }
                        });
                      }, child: Text('Next',style: TextStyle(color:
                  Colors.white,fontSize: 22),)),
                ))

          ],

        ):
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("congratulations!",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
              Text("Your Total score is :$MytotalScore",style: TextStyle(fontSize: 18),),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green,
                ),
                  onPressed: (){
                setState(() {
                  Index=0;
                  MytotalScore=0;
                });
              }, child: Text('Reset Quiz',style: Theme.of(context).textTheme.titleMedium!
                  .copyWith(color:Colors.green),))
            ],
          ),
        ))


    );
  }
}
