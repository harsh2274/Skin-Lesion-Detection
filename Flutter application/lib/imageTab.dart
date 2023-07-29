import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'quizScreen.dart';

class Imagetab extends StatelessWidget {
  Imagetab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatefulWidget{
  HomePage createState()=> HomePage();
}

class HomePage extends State<MainPage> {

  File? _image;

  Future getImage(ImageSource src) async {
    try {
      final image = await ImagePicker().pickImage(source: src);
      if (image == null) return;

      final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30,),
            Text("Hello, AKSHAT",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontSize: 20
              ),),
            SizedBox(height: 30,),
            Center(
              child: _image != null ? Image.file(
                _image!, width: 250, height: 250, fit: BoxFit.cover,) : Text(
                  'Please select the photo'),
            ),
          ],
        ),
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () => getImage(ImageSource.gallery),
              child: Icon(Icons.photo,
                color: Colors.white,),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () => getImage(ImageSource.camera),
              child: Icon(Icons.camera_alt_rounded,
                color: Colors.white,),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () =>
              {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                          height: 300,
                          child: QuizzScreen()
                      );
                    }),
              },
              child: Icon(Icons.send, color: Colors.white,),
            ),
          ],
        )
    );
  }
}

