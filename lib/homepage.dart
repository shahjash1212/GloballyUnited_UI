import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/profiles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightc = MediaQuery.of(context).size.height;
    var widthc = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: GridViewOfProfile(
          heightc: heightc, widthc: widthc, profiles: profiels),
    );
  }
}

class GridViewOfProfile extends StatelessWidget {
  List<Profile> profiles;
  GridViewOfProfile({
    Key? key,
    required this.heightc,
    required this.widthc,
    required this.profiles,
  }) : super(key: key);

  final double heightc;
  final double widthc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: GridView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: .61,
        ),
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          Profile p = profiles[index];
          return Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color.fromARGB(255, 236, 236, 236),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(1, 5),
                      blurRadius: 2,
                      color: Color.fromARGB(97, 75, 75, 75))
                ]),
            child: Column(
              children: [
                Container(
                  height: heightc / 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image: AssetImage(p.image), fit: BoxFit.cover),
                      color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      p.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(p.gu,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(p.image),
                      // child: Image(
                      // fit: BoxFit.fitWidth,
                      // image: AssetImage(p.image),
                      // ),
                    ),
                    SizedBox(
                      width: widthc / 100,
                    ),
                    Text(p.name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                  ],
                )
              ],
            ),
          );
        },
      ),
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
