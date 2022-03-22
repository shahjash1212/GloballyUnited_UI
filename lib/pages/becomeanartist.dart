import 'package:flutter/material.dart';
import 'package:globally_united_ui/pages/applicationstrings.dart';

class BecomeAnArtistPage extends StatefulWidget {
  const BecomeAnArtistPage({Key? key}) : super(key: key);

  @override
  State<BecomeAnArtistPage> createState() => _BecomeAnArtistPageState();
}

class _BecomeAnArtistPageState extends State<BecomeAnArtistPage> {
  int _value = 0;

  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var eMail = TextEditingController();
  final socialMedia = TextEditingController();
  final driveDropbox = TextEditingController();
  final artworkDrive = TextEditingController();
  final backgroundInfo = TextEditingController();

  void clearText() {
    firstName.clear();
    lastName.clear();
    eMail.clear();
    socialMedia.clear();
    driveDropbox.clear();
    artworkDrive.clear();
    backgroundInfo.clear();
  }

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
              Column(
                children: [
                  NFTFormField(
                    textEditingController: firstName,
                    lable: 'First Name',
                  ),
                  NFTFormField(
                      textEditingController: lastName, lable: "Last Name"),
                  NFTFormField(
                      lable: "Email",
                      textEditingController: eMail,
                      hintText: 'abc@gmail.com')
                ],
              ),
              NFTFormField(
                textEditingController: socialMedia,
                hintText: 'Your Answer',
                lableHeader: ApplicationStrings.URL_SOCIAL_MEDIA,
                labelbody: ApplicationStrings.URL_SOCIAL_MEDIA_DISCRIPTION,
              ),
              NFTFormField(
                textEditingController: driveDropbox,
                hintText: 'Your Answer',
                lableHeader: ApplicationStrings.PROVIDE_LINK_TO,
                labelbody: ApplicationStrings.PROVIDE_LINK_TO_DISCRIPTION,
              ),
              NFTFormField(
                textEditingController: artworkDrive,
                hintText: 'Your Answer',
                lableHeader: ApplicationStrings.SUBMIT_ART_WORK,
                labelbody: ApplicationStrings.SUBMIT_ART_WORK_DISCRIPTION,
              ),
              NFTFormField(
                textEditingController: backgroundInfo,
                lableHeader: ApplicationStrings.BACKGROUND_INFO,
                hintText: 'Your Answer',
              ),
              SizedBox(
                height: height / 80,
              ),
              Text(
                ApplicationStrings.DIGITAL_WALLET,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
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
                  const Text(
                    "Yes",
                    style:  TextStyle(fontSize: 14),
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
                  const Text(
                    "No",
                    style:  TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff341e43)),
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
                  child: const Text(
                    "Clear Form",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                  onTap: (() {
                    clearText();
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NFTFormField extends StatelessWidget {
  NFTFormField({
    Key? key,
    this.lable,
    this.hintText,
    this.labelbody,
    this.lableHeader,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;
  String? hintText;
  String? lableHeader, labelbody, lable;
  bool star = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        lable != null
            ? Row(
                children: [
                  Text(
                    lable ?? "",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  )
                ],
              )
            : Container(),
        lableHeader != null
            ? Text(
                lableHeader ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              )
            : Container(),
        labelbody != null
            ? Text(
                labelbody ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )
            : Container(),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
