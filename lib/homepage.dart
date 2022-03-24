import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/nfttileinfo.dart';
import 'package:globally_united_ui/model/profiles.dart';
import 'package:globally_united_ui/pages/becomeanartist.dart';
import 'package:globally_united_ui/pages/offersreceiverdpage.dart';
import 'package:globally_united_ui/pages/search1.dart';
import 'package:globally_united_ui/pages/searchpage.dart';

import 'cardpage.dart';
import 'gridviewprofiles.dart';
import 'nftinfolistview.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var heightc = MediaQuery.of(context).size.height;
    // var widthc = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      // body: OffersReceviedPage(),
      // body: NftInfoListView(nfttileinfos: nfttileinfos),

      body: const Search1(),

      // body: GridViewOfProfile(
      //     heightc: heightc, widthc: widthc, profiles: profiels),
    );
  }
}



// class CardView extends StatelessWidget {
//   const CardView({
//     Key? key,
//     required this.heightc,
//     required this.widthc,
//   }) : super(key: key);

//   final double heightc;
//   final double widthc;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(2),
//       // height: MediaQuery.of(context).size.height / 2.5,
//       // width: MediaQuery.of(context).size.width / 1.8,
//       decoration:
//           const BoxDecoration(color: Color.fromARGB(255, 143, 143, 143)),
//       child: Column(
//         children: [
//           Container(
//             height: heightc / 4,
//             decoration: BoxDecoration(color: Colors.black),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "data",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               ),
//               Text("2 GU",
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 18,
//                 backgroundColor: Colors.yellow,
//               ),
//               SizedBox(
//                 width: widthc / 40,
//               ),
//               Text("data",
//                   style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
