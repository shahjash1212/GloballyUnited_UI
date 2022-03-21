import 'package:flutter/material.dart';
import 'package:globally_united_ui/pages/applicationstrings.dart';

class BecomeAnArtistPage extends StatefulWidget {
  const BecomeAnArtistPage({Key? key}) : super(key: key);

  @override
  State<BecomeAnArtistPage> createState() => _BecomeAnArtistPageState();
}

class _BecomeAnArtistPageState extends State<BecomeAnArtistPage> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Become an Artist",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 20),
          child: Column(
            children: [
              NameEmailINputs(height: height),
              SizedBox(
                height: height / 40,
              ),
              Text(
                ApplicationStrings.URL_SOCIAL_MEDIA,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.URL_SOCIAL_MEDIA_DISCRIPTION,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your Answer',
                    isDense: true),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.PROVIDE_LINK_TO,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.PROVIDE_LINK_TO_DISCRIPTION,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your Answer',
                    isDense: true),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.SUBMIT_ART_WORK,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.SUBMIT_ART_WORK_DISCRIPTION,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your Answer',
                    isDense: true),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.BACKGROUND_INFO,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your Answer',
                    isDense: true),
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.DIGITAL_WALLET,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value as int;
                      });
                    },
                  ),
                  Text(
                    "Yes",
                    style: TextStyle(fontSize: 14),
                  ),
                  Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value as int;
                      });
                    },
                  ),
                  Text(
                    "No",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff341e43)),
                child: const Center(
                  child: Text(
                    "Apply",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: GestureDetector(
                  child: Text(
                    "Clear Form",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                  onTap: (() {}),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NameEmailINputs extends StatelessWidget {
  const NameEmailINputs({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "First Name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Text(
              '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: height / 80,
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: height / 80,
        ),
        Row(
          children: const [
            Text(
              "Last Name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Text(
              '*',
              style: TextStyle(color: Colors.red, fontSize: 18),
            )
          ],
        ),
        SizedBox(
          height: height / 80,
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: height / 80,
        ),
        Row(
          children: const [
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: height / 80,
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'abc@gmail.com',
          ),
        ),
      ],
    );
  }
}
