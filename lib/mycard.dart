import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'image/main/bbanto.jpg',
              ),
              radius: 60.0,
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[850],
            thickness: 0.5,
            endIndent: 30.0,
          ),
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'BBANTO',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'BBANTO POWER LEVEL',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '14',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'using lightsaber',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'face hero tattoo',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'fire flames',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('image/main/flying.png'),
              radius: 40.0,
              backgroundColor: Colors.amber[800],
            ),
          ),
        ],
      ),
    );
  }
}
