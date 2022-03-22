import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/nfttileinfo.dart';
import 'package:globally_united_ui/nftinfolistview.dart';

class OffersReceviedPage extends StatelessWidget {
  const OffersReceviedPage({Key? key}) : super(key: key);

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
          "Offers Received",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xff341e44)),
        ),
      ),
      body: NftInfoListView(nfttileinfos: nfttileinfos),
    );
  }
}
