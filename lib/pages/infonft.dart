import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/colourmodel.dart';

import '../model/nfttileinfo.dart';

class InfoNFT extends StatelessWidget {
  const InfoNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nfttileinfos.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Row(
                    children: [
                      const CircleAvatar(
                          radius: 27, backgroundColor: Colors.blue),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(nfttileinfos[index].nftTitle,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16)),
                            const SizedBox(height: 2),
                            Text(nfttileinfos[index].startDate),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Properties",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 20),

                // color: Colors.black,s
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colours.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Colour"),
                          Text(colours[index].name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          Text("${colours[index].percentage}%"),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Chain Info",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Contract address",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          const Text("laksjdhdf'asljdghas;kfjhga",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          const SizedBox(height: 10),
          const Text("Token ID",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          const Text("laksjdhdf'asljdghas;kfjhga",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
          const SizedBox(height: 30),
          const Text(
            "Open on PloygonScan",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline),
          )
        ],
      ),
    );
  }
}
