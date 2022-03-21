import 'package:flutter/material.dart';

import 'model/profiles.dart';

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