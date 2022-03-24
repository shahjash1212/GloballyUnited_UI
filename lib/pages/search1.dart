import 'package:flutter/material.dart';
import 'package:globally_united_ui/pages/applicationstrings.dart';

class Search1 extends StatefulWidget {
  const Search1({Key? key}) : super(key: key);

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  // bool _isSelectedCollect = false;
  // bool _isSelectedCreate = false;
  // bool _isSelected = false;

  late List<String> _choicesLorem;
  late List<String> _choicesSortBy;
  int? _defaultChoiceIndexLorem;
  int? _defaultChoiceIndexSortBy;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _defaultChoiceIndexLorem = 0;
    _defaultChoiceIndexSortBy = 0;
    _choicesLorem = [
      ApplicationStrings.SEARCH1_LOREM_COLLECTED,
      ApplicationStrings.SEARCH1_LOREM_CREATED
    ];
    _choicesSortBy = [
      ApplicationStrings.SEARCH1_SORTBY_NEW,
      ApplicationStrings.SEARCH1_SORTBY_PRICEH_L,
      ApplicationStrings.SEARCH1_SORTBY_AUCTION,
      ApplicationStrings.SEARCH1_SORTBY_PRICEL_h,
      ApplicationStrings.SEARCH1_SORTBY_SOLD,
    ];
  }

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
          "Search",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Search username or NFT'),
            ),
            const Text(
              "Lorem",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            // Row(
            //   children: [
            //     ChoiceChipSearch(
            //         name: ApplicationStrings.SEARCH1_LOREM_COLLECTED,
            //         isSelected: _isSelectedCollect,
            //         onSelect: (newBoolValue) {
            //           setState(() {
            //             _isSelectedCollect = newBoolValue;
            //           });
            //           print("==========$_isSelected");
            //         }),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     ChoiceChipSearch(
            //         name: ApplicationStrings.SEARCH1_LOREM_CREATED,
            //         isSelected: _isSelectedCreate,
            //         onSelect: (newBoolValue) {
            //           setState(() {
            //             _isSelectedCreate = newBoolValue;
            //           });
            //           print("==========$_isSelected");
            //         }),
            //   ],
            // ),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _choicesLorem.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: ChoiceChip(
                      shape: const StadiumBorder(side: BorderSide(width: .5)),
                      label: Text(_choicesLorem[index]),
                      selected: _defaultChoiceIndexLorem == index,
                      selectedColor: Color(0xff341e43),
                      onSelected: (bool selected) {
                        setState(() {
                          _defaultChoiceIndexLorem = selected ? index : 0;
                        });
                      },
                      backgroundColor: Colors.transparent,
                      labelStyle: TextStyle(
                        color: _defaultChoiceIndexLorem == index
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 15),
            const Text(
              "Sort By",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),

            Container(
              height: 100,
              child: Wrap(
                  spacing: 4,
                  direction: Axis.vertical,
                  children: List.generate(
                    _choicesSortBy.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ChoiceChip(
                        shape: const StadiumBorder(side: BorderSide(width: .5)),
                        label: Text(_choicesSortBy[index]),
                        selected: _defaultChoiceIndexSortBy == index,
                        selectedColor: Color(0xff341e43),
                        onSelected: (bool selected) {
                          setState(() {
                            _defaultChoiceIndexSortBy = selected ? index : 0;
                          });
                        },
                        backgroundColor: Colors.transparent,
                        labelStyle: TextStyle(
                          color: _defaultChoiceIndexSortBy == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  )),
            ),

            // child: GridView.builder(
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     mainAxisSpacing: 0,
            //     crossAxisSpacing: 0,
            //     childAspectRatio: 3,
            //   ),
            //   itemCount: _choicesSortBy.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ChoiceChip(
            //       shape: const StadiumBorder(side: BorderSide(width: .5)),
            //       label: Text(_choicesSortBy[index]),
            //       selected: _defaultChoiceIndexSortBy == index,
            //       selectedColor: Color(0xff341e43),
            //       onSelected: (bool selected) {
            //         setState(() {
            //           _defaultChoiceIndexSortBy = selected ? index : 0;
            //         });
            //       },
            //       backgroundColor: Colors.transparent,
            //       labelStyle: TextStyle(
            //         color: _defaultChoiceIndexSortBy == index
            //             ? Colors.white
            //             : Colors.black,
            //       ),
            //     );
            //     ;
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class ChoiceChipSearch extends StatelessWidget {
  ChoiceChipSearch({
    Key? key,
    required bool isSelected,
    required this.onSelect,
    required this.name,
  })  : _isSelected = isSelected,
        super(key: key);
  final String name;
  final bool _isSelected;
  final Function onSelect;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selectedColor: Color(0xff341e43),
      label: Text(name),
      selected: _isSelected,
      backgroundColor: Colors.transparent,
      shape: const StadiumBorder(side: BorderSide(width: .5)),
      labelStyle: TextStyle(
        color: _isSelected ? Colors.white : Colors.black,
      ),
      onSelected: (newBoolValue) {
        onSelect(newBoolValue);
      },
    );
  }
}
