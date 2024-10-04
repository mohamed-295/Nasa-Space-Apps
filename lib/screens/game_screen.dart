import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nasa_space_apps/widgets/choose_difficulty.dart';
import '../widgets/bluetooth_widget.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff000DA0),
              Color(0xff00053A),
              Color(0xff00053A),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/Vector.svg",
                  fit: BoxFit.cover,
                  height: 31,
                  width: 31,
                ),
                const Text(
                  "  Space Invaders",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 45),
            const BluetoothWidget(),
            const SizedBox(height: 65),
            const ChooseDifficulty(),
            const SizedBox(height: 35),
          const SizedBox(height: 35),
          Container(
            height: 62,
            width: 120,
              decoration: BoxDecoration(
                color:  Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(37),
              ),
              child: Center(child: Text("STOP",style: TextStyle(fontSize: 25),)),
          ),
          ],
        ),
      ),
    );
  }
}

