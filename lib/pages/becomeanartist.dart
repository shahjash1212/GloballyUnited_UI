import 'package:flutter/material.dart';

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
              const Text(
                "Please provide full URL social media links and refrences *",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const Text(
                "As we like to ensure the protevtion of artists' creations,identity verification is an important aspect of the on-boarding process.Please temporarily add your email(the same one you provided above) to your Website/Portfolio / Social Media bio,to verify your ownership of theme.List the link(s) where we can verify the placement of your email,below: ",
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
              const Text(
                "Please provide a link to Google Drive or Dropbox with examples of your best, past work. *",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const Text(
                "Please provide links that showcase examples of your past work.",
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
              const Text(
                "Please submit three artworks in a single Google Drive or Dropbox URL that you plan to publish on MakersPlace *",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              SizedBox(
                height: height / 80,
              ),
              const Text(
                "Please submit links to 3 high resolution artworks that you wish to sell on MakersPlace. Please included the highest resolution images, to help verify that you own the artwork. (Ensure that all links are accessible by our team members)",
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
              const Text(
                "Please provide background information on yourself (achievements, awards, etc.) and related to your art career. *",
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
              const Text(
                "If accepted, will you be using your own digital wallet?",
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
