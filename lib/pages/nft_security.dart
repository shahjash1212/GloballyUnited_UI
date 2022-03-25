import 'package:flutter/material.dart';
import 'package:globally_united_ui/model/colourmodel.dart';
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
              popup: false,
            ),
            NFTSecurityItem(
              title: ApplicationStrings.SECURITY_AUTH_TITLE,
              discription: ApplicationStrings.SECURITY_AUTH_DISC,
              popup: true,
            ),
            NFTSecurityItem(
              title: ApplicationStrings.SECURITY_SMS_TITLE,
              discription: ApplicationStrings.SECURITY_SMS_DISC,
              popup: false,
            ),
          ],
        ),
      ),
    );
  }
}

class NFTSecurityItem extends StatelessWidget {
  NFTSecurityItem({
    Key? key,
    required this.title,
    required this.discription,
    required this.popup,
  }) : super(key: key);

  final title;
  final discription;
  bool popup = false;

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
                onPressed: () {
                  popup
                      ? showDialog(
                          context: context,
                          builder: (context) => _buildPopupDialog(context))
                      : null;
                },
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

Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    content: Container(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('2 FA',
                  style: TextStyle(
                      color: Color(0xff341e43),
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              IconButton(
                icon: const Icon(Icons.close),
                color: const Color(0xff341e43),
                padding: EdgeInsets.zero,
                splashColor: Color(0xff341e43),
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Please ennter verification code sent to your email"),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade200),
                child: const TextField(
                  cursorColor: Color(0xff341e43),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Resend',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff341e43),
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xff341e43),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
