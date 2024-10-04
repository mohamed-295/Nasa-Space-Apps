import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BluetoothWidget extends StatelessWidget {
  const BluetoothWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(37),
        color: Color.fromARGB(210, 255, 255, 255),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 4),
          Container(
            width: 110,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37),
              color: Color(0xff000D99),
            ),
            child: Center(
              child: SvgPicture.asset(
                "assets/Vector1.svg",
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            "Status: ",
            style: TextStyle(fontSize: 20),
          ),
          const Text(
            "connected ",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
