import 'dart:async';
import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/widget/app_bar.dart';
import 'package:searching_algorithm_visualization/widget/learn_more.dart';
import 'package:searching_algorithm_visualization/widget/search_count.dart';
import '../model/input_data.dart';
import '../widget/binary_search_button.dart';
import '../widget/data_card.dart';
import '../widget/input_formfield.dart';
import '../widget/result_text_field.dart';

class BinarySearchScreen extends StatefulWidget {
  const BinarySearchScreen({Key? key}) : super(key: key);

  @override
  _BinarySearchScreenState createState() => _BinarySearchScreenState();
}

class _BinarySearchScreenState extends State<BinarySearchScreen> {
  late List<RandomData> dataModel;
  late Stream<List<RandomData>> _stream;
  late StreamController<List<RandomData>> streamController;

  late int input = 0;
  bool isSearching = true;
  int index = -1;
  int count = 0;

  void setIndex(int i) {
    setState(() {
      index = i;
    });
  }

  void setCount() {
    setState(() {
      count = 0;
    });
  }

  void setInput(int value) {
    setState(() {
      input = value;
    });
  }

  void isSearchingFunction(bool value) {
    setState(() {
      isSearching = value;
    });
  }

  void setList(int index) {
    dataModel = reset(index);
    streamController.add(dataModel);
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    dataModel = reset(-1);
    streamController = StreamController<List<RandomData>>();
    _stream = streamController.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar("Binary Search Algorithm"),
        body: Column(children: [
          const SizedBox(
            height: 150,
          ),
          StreamBuilder<Object>(
              stream: _stream,
              builder: (context, snapshot) {
                count++;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: dataModel.map((e) => createCard(e)).toList(),
                );
              }),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createSearchCount(count),
              Center(child: inputTextField(setValue: setInput)),
              createLearnMoreOption(
                  "https://www.geeksforgeeks.org/binary-search/",
                  "Binary Search")
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          createBinarySearchButton(setList, dataModel, input, setIndex,
              isSearchingFunction, setCount),
          isSearching ? const SizedBox() : OutputText(index),
        ]));
  }
}
