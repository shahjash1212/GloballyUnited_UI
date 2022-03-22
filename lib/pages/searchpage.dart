import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/colourmodel.dart';
import 'package:globally_united_ui/model/nfttileinfo.dart';
import 'package:globally_united_ui/nftinfolistview.dart';

import 'infonft.dart';
import 'module/globalhistory.dart';
import 'module/nftactivity.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "Search",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  "Info NFT",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Activity",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Global History",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InfoNFT(),
            NFTActivity(),
            GlobalHistory(),
          ],
        ),
      ),
    );
  }
}
