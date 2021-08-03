import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Animals Sound',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          ReusableCard(imagePath: "cat.png", audioPath: 'cat',),
          ReusableCard(imagePath: "cow.jpg", audioPath: 'cow',),
          ReusableCard(imagePath: "dog.jpg", audioPath: 'dog',),
          ReusableCard(imagePath: "chicken.png", audioPath: 'chicken',),
          ReusableCard(imagePath: "sheep.jpg", audioPath: 'sheep',),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.imagePath, this.audioPath});

  final String imagePath;
  final String audioPath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          var player = AudioCache();
          player.play('$audioPath.mp3');
        },
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(25),
          child: Image.asset(
            'images/$imagePath',
            width: 300,
            height: 300,
          ),
        ),
    );
  }
}
