import 'package:basketball_counter_app/providers/counter_provider.dart';
import 'package:basketball_counter_app/widgets/team_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: const Text(
          "Basketball Counter",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TeamCard(
                  teamName: "Team A",
                  score: provider.countA,
                  addPoints: provider.addPointsToA,
                ),
              ),
      
              SizedBox(
                height: 400,
                child: const VerticalDivider(
                  thickness: 2,
                  color: Color(0xffdcdcdc),
                ),
              ),
      
              Expanded(
                child: TeamCard(
                  teamName: "Team B",
                  score: provider.countB,
                  addPoints: provider.addPointsToB,
                ),
              ),
            ],
          ),
      
          ElevatedButton(
            onPressed: provider.reset,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            child: const Text(
              "Reset",
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
