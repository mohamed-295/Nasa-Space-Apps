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
            const SizedBox(height: 35),
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
            const SizedBox(height: 35),
            const BluetoothWidget(),
            const SizedBox(height: 35),
            const ChooseDifficulty(),
            const SizedBox(height: 35),
          Container(
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
                        "Result :",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 75,
                      decoration: BoxDecoration(
                        color:  Color(0xff000D99),
                        borderRadius: BorderRadius.circular(37),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal:20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Accuracy : 70% ",style: TextStyle(fontSize: 20 ,color: Colors.white), ),
                             Text("Score : 21/30 ",style: TextStyle(fontSize: 20 ,color: Colors.white), ),
                          ],
                        ),
                      ),
                    )
                    
                  ],
                ),
              ),
            ),
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

