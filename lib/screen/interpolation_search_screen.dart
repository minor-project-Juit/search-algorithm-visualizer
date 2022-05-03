import 'dart:async';

import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/widget/app_bar.dart';

import '../model/input_data.dart';
import '../widget/data_card.dart';
import '../widget/input_formfield.dart';
import '../widget/interpolation_search_button.dart';
import '../widget/learn_more.dart';
import '../widget/result_text_field.dart';
import '../widget/search_count.dart';

class InterpolationSearchScreen extends StatefulWidget {
  const InterpolationSearchScreen({Key? key}) : super(key: key);

  @override
  State<InterpolationSearchScreen> createState() =>
      _InterpolationSearchScreenState();
}

class _InterpolationSearchScreenState extends State<InterpolationSearchScreen> {
  late List<RandomData> dataModel;
  late Stream<List<RandomData>> _stream;
  late StreamController<List<RandomData>> streamController;

  late int input = 0;
  bool isSearching = true;
  int index = -1;
  int count = 0;

  void setCount() {
    setState(() {
      count = 0;
    });
  }

  void setIndex(int i) {
    setState(() {
      index = i;
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
        appBar: createAppBar("Interpolation Search Algorithm"),
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
                  "https://www.geeksforgeeks.org/interpolation-search/",
                  "Interpolation Search")
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          createInterpolationSearchButton(setList, dataModel, input, setIndex,
              isSearchingFunction, setCount),
          isSearching ? const SizedBox() : OutputText(index),
        ]));
  }
}
