import 'package:flutter/material.dart';
import 'package:skin_disease/historyTab.dart';
import 'package:skin_disease/list.dart';
import 'questions_example.dart';
// import 'package:quizz_app/screens/result_screen.dart';
// import 'package:quizz_app/ui/shared/color.dart';
// import 'package:quizz_app/widgets/quizz_widget.dart';
// import 'package:quizz_app/model/question_model.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next";
  bool answered = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "Result";
                });
              }
              else if (page != questions.length - 1) {
                setState(() {
                  btnText = "Next";
                });
              }
              setState(() {
                answered = false;
              });
            },
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Question ${index + 1}/5",
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: Text(
                        "${questions[index].question}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 40.0,
                        margin: const EdgeInsets.only(
                            bottom: 5.0, left: 2.0, right: 2.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: !btnPressed
                              ? Colors.white
                              : Colors.white,
                          onPressed:  () {
                            setState(() {
                              btnPressed = true;
                              answered = true;
                            });
                          },
                          child: Text(questions[index].answers!.keys.toList()[i],
                              style: const TextStyle(
                                color: Colors.cyan,
                                fontSize: 15.0,
                              )),
                        ),

                      ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        if (_controller!.page?.toInt() == questions.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        } else {
                          _controller!.nextPage(
                              duration: Duration(milliseconds: 250),
                              curve: Curves.easeInExpo);

                          setState(() {
                            btnPressed = false;
                          });
                        }
                      },
                      shape: StadiumBorder(),
                      fillColor: Colors.blue,
                      padding: EdgeInsets.all(10.0),
                      elevation: 0.0,
                      child: Text(
                        btnText,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}
