import 'package:flutter/material.dart';

import '../../model/nfttileinfo.dart';

class GlobalHistory extends StatelessWidget {
  const GlobalHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.separated(
        itemCount: nfttileinfos.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          NftTileInfo nft = nfttileinfos[index];
          return Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  // backgroundImage: nft.image,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bid Placed by @${nft.id}",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text(
                              nft.startDate,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 5),
                            Text(
                              nft.endDate,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      ("${nft.token}GU"),
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "${nft.price} USD",
                      style: TextStyle(fontSize: 12),
                    )
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
