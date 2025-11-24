import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String teamName;
  final int score;
  Function(int) addPoints;
  TeamCard({
    super.key,
    required this.teamName,
    required this.score,
    required this.addPoints,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(teamName, style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text(
              '$score',
              style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
            ),
            customButton("+1 Point", 1),
            customButton("+2 Point", 2),
            customButton("+3 Point", 3),
          ],
        ),
      ),
    );
  }

  customButton(String text, int points) {
    return ElevatedButton(
      onPressed: () => addPoints(points),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: const TextStyle(color: Colors.white,fontSize: 10)),
          const Icon(Icons.sports_basketball, color: Colors.white),
        ],
      ),
    );
  }
}
