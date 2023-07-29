import "package:flutter/material.dart";
import "package:skin_disease/main.dart";

import "imageTab.dart";
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatelessWidget {

  DetailPage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
      title: Text("Description",style: TextStyle(color: Colors.white),),
    ),
      body: Center(
    child: Container(
        width: 300,
        height: 600,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))
        ),
      child:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:20,horizontal: 10),
          child: Column(
            children: [
              Image.asset("images/acne1.png",
                height: 200,),
              SizedBox(
                height: 30,
              ),
              Text("Acne",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("A natural home remedy for acne is mixing equal parts of honey and cinnamon, "
                  "applying the mixture to affected areas, and leaving it on for 15 minutes before "
                  "rinsing off with warm water.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Symptoms",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Rash, Pain, Itching",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () => { Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp()))},
                  child: Text("Back",
                  style: TextStyle(color: Colors.white,
                  fontSize: 20),),
                  )
            ],
          ),
        ),
      )
    ),
  )
    );
  }


}

