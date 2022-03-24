import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/nfttileinfo.dart';
import 'package:globally_united_ui/nftinfolistview.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Receive Notifications for:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            NotificationItem(
              title: 'NFT Sold',
              discription: 'When somone purchased one of your items',
            ),
            NotificationItem(
              title: 'Bid Activity',
              discription: 'When somone purchased one of your items',
            ),
            NotificationItem(
              title: 'Counter Offer',
              discription: 'When somone purchased one of your items',
            ),
            NotificationItem(
              title: 'Auction Expiration',
              discription: 'When somone purchased one of your items',
            ),
            NotificationItem(
              title: 'Outbid',
              discription: 'When somone purchased one of your items',
            ),
            NotificationItem(
              title: 'Successful Purchase',
              discription: 'When somone purchased one of your items',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatefulWidget {
  const NotificationItem({
    Key? key,
    required this.title,
    required this.discription,
  }) : super(key: key);

  final String title;
  final String discription;
  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  var checkBoxValue;

  void Checked() {
    print('the box is checked');
  }

  void UnChecked() {
    print('the box is not checked');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkBoxValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
                value: checkBoxValue,
                onChanged: (newvalue) {
                  setState(() {
                    checkBoxValue = newvalue;
                    checkBoxValue ? print('yesssss') : print("NOOOOO");
                    checkBoxValue ? Checked() : UnChecked();
                    checkBoxValue
                        ? ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(widget.title)))
                        : UnChecked();
                  });
                }),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            widget.discription,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: const Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

          
//           Container(
//             height: 300,
//             child: ListView.builder(
//               itemCount: nfttileinfos.length,
//               itemBuilder: (context, index) {
//                 return NotificationItem();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NotificationItem extends StatefulWidget {
//   final List<NftTileInfo> nfttileinfo;
//   const NotificationItem({
//     Key? key,
//   }) : super(key: key,required this.nfttileinfo);

//   @override
//   State<NotificationItem> createState() => _NotificationItemState();
// }

// class _NotificationItemState extends State<NotificationItem> {
//   var checkBoxValue;

//   @override
//   void initState() {
//     super.initState();
//     checkBoxValue = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//           value: checkBoxValue,
//           onChanged: (newValue) {
//             setState(() {
//               checkBoxValue = newValue;
//             });
//           },
//         ),
//         Text(nfttileinfos[0].nftTitle)
//       ],
//     );
//   }
// }
