import 'package:flutter/material.dart';
import 'package:globally_united_ui/pages/applicationstrings.dart';

class NFTSecurityPage extends StatelessWidget {
  const NFTSecurityPage({Key? key}) : super(key: key);

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
          "Security",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enable Two-Factor Authentication",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            NFTSecurityItem(
              title: ApplicationStrings.SECURITY_NFT_TITLE,
              discription: ApplicationStrings.SECURITY_NFT_DISC,
            ),
            NFTSecurityItem(
              title: ApplicationStrings.SECURITY_AUTH_TITLE,
              discription: ApplicationStrings.SECURITY_AUTH_DISC,
            ),
            NFTSecurityItem(
              title: ApplicationStrings.SECURITY_SMS_TITLE,
              discription: ApplicationStrings.SECURITY_SMS_DISC,
            ),
          ],
        ),
      ),
    );
  }
}

class NFTSecurityItem extends StatelessWidget {
  const NFTSecurityItem({
    Key? key,
    required this.title,
    required this.discription,
  }) : super(key: key);

  final title;
  final discription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              RaisedButton(
                elevation: 0,
                color: const Color(0xff341e43),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                onPressed: () {},
                child: const Text(
                  "Enable",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Text(
            discription,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          const Divider(thickness: 1)
        ],
      ),
    );
  }
}
