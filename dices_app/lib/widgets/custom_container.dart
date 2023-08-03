import 'package:darts_app/widgets/dice_roller.dart';
import 'package:flutter/material.dart';


Alignment? startAlignment;
// ignore: prefer_const_declarations
final endAlignment = Alignment.bottomRight;
const String helloWorld = 'Hello World';
const String secText = "It's time to learn Flutter!";

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors1});

  final List<Color> colors1;

  

  @override
  Widget build(BuildContext context) {
    startAlignment = Alignment.topLeft;
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 185, 221, 250),
        gradient: LinearGradient(
          begin: startAlignment!,
          end: endAlignment,
          colors: colors1,
        ),
      ),
      child:const Center(
        child: DiceRoller(),
      ),
    );
  }
}


// //Second Option
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.color1, required this.color2});

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(BuildContext context) {
//     startAlignment = Alignment.topLeft;
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 185, 221, 250),
//         gradient: LinearGradient(
//           begin: startAlignment!,
//           end: endAlignment,
//           colors: [color1,color2],
//         ),
//       ),
//       child: const Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               helloWorld,
//               style: TextStyle(color: Colors.white),
//             ),
//             StyledText(secText),
//           ],
//         ),
//       ),
//     );
//   }
// }
