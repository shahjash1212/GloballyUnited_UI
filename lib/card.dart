import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.heightc,
    required this.widthc,
  }) : super(key: key);

  final double heightc;
  final double widthc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(2),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(color: Colors.red, boxShadow: [
          BoxShadow(
              offset: Offset(-1, 2),
              blurRadius: 3,
              color: Color.fromARGB(97, 202, 85, 85))
        ]),
        child: Column(
          children: [
            Container(
              height: heightc / 4,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "data",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text("2 GU",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.yellow,
                ),
                SizedBox(
                  width: widthc / 40,
                ),
                Text("data",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
