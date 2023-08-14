// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class QuestionsSummary extends StatelessWidget {
//   const QuestionsSummary(this.summaryData, {super.key});

//   final List<Map<String, Object>> summaryData;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: summaryData.map(
//             (data) {
//               return Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   if (data['correct_answer'] == data['user_answer'])
//                     Text(
//                       ((data['question_index'] as int) + 1).toString(),
//                       style: TextStyle(color: Colors.blue),
//                     ),
//                   Text(
//                     ((data['question_index'] as int) + 1).toString(),
//                     style: TextStyle(color: Colors.red),
//                   ),
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           data['question'] as String,
//                           style: GoogleFonts.lato(
//                               color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           data['user_answer'] as String,
//                           style: GoogleFonts.lato(
//                             color: Color.fromARGB(255, 242, 84, 232),
//                             fontSize: 15,
//                           ),
//                         ),
//                         Text(
//                           data['correct_answer'] as String,
//                           style: GoogleFonts.lato(
//                               color: Color.fromARGB(255, 97, 162, 247), fontSize: 15),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ).toList(),
//         ),
//       ),
//     );
//   }
// }
