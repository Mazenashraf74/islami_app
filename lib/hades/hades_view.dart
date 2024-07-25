// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:islamiassigment/hades/hadeth_details.dart';
// import 'hadeth_title_widget.dart';
//
// class HadethTab extends StatefulWidget {
//   @override
//   State<HadethTab> createState() => _HadethTabState();
// }
//
// class _HadethTabState extends State<HadethTab> {
//   List<HadethContent> allHadeth = [];
//
//   @override
//   void initState() {
//     super.initState();
//     loadHadethFile();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Image.asset("assets/images/hadeth_header.png"),
//         Expanded(
//           child: ListView.separated(
//             itemBuilder: (context, index) => InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, HadethDetails.routeName,
//                     arguments: allHadeth[index]);
//               },
//               child: HadethTitleWidget(
//                 allHadeth[index].titel,
//               ),
//             ),
//             separatorBuilder: (context, index) => Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 50.0),
//               child: Divider(
//                 color: Theme.of(context).primaryColor,
//                 thickness: 1.2,
//               ),
//             ),
//             itemCount: allHadeth.length,
//           ),
//         ),
//       ],
//     );
//   }
//
//   Future <void> loadHadethFile() async {
//     List<HadethContent> list = [];
//     String content = await rootBundle.loadString("assets/files/ahadeth.txt");
//     List<String> allHadethContent = content.split("#");
//
//     for (int i = 0; i < allHadethContent.length; i++) {
//       String singleHadethContent = allHadethContent[i].trim();
//
//       int indexOfFirstLine = singleHadethContent.indexOf("\n");
//       String title = singleHadethContent.substring(0, indexOfFirstLine);
//       String content = singleHadethContent.substring(indexOfFirstLine + 1);
//
//       HadethContent hadeth = HadethContent(title, content);
//       list.add(hadeth);
//     }
//
//     setState(() {
//       allHadeth = list;
//     });
//   }
// }
//
// class HadethContent {
//   final String titel;
//   final String content;
//
//   HadethContent(this.titel, this.content);
// }
