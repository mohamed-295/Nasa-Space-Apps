import 'package:flutter/material.dart';
import 'package:nasa_space_apps/widgets/levels.dart';

class ChooseDifficulty extends StatelessWidget {
  const ChooseDifficulty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(37),
        color: Color.fromARGB(210, 255, 255, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 8),
              child: Text(
                "Choose Difficulty:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color:  Color(0xff000D99),
                borderRadius: BorderRadius.circular(37),
              ),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Levels(levelName: "Level 1"),
                Levels(levelName: "Level 2"),
                Levels(levelName: "Level 3"),
                Levels(levelName: "Level 4"),
              ],
            ),
            )
            
          ],
        ),
      ),
    );
  }
}
