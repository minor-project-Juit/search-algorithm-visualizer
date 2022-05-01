import 'dart:async';

import 'package:flutter/material.dart';
import 'package:searching_algorithm_visualization/widget/app_bar.dart';
import '../model/input_data.dart';
import '../widget/jump_search_button.dart';
import '../widget/data_card.dart';
import '../widget/input_formfield.dart';
import '../widget/result_text_field.dart';

class JumpSearchScreen extends StatefulWidget {
  const JumpSearchScreen({Key? key}) : super(key: key);

  @override
  _JumpSearchScreenState createState() => _JumpSearchScreenState();
}

class _JumpSearchScreenState extends State<JumpSearchScreen> {
  late List<RandomData> dataModel;
  late Stream<List<RandomData>> _stream;
  late StreamController<List<RandomData>> streamController;

  late int input = 0;
  bool isSearching = true;
  int index = -1;

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
        appBar: createAppBar("Jump Search Algorithm"),
        body: Column(children: [
          const SizedBox(
            height: 150,
          ),
          StreamBuilder<Object>(
              stream: _stream,
              builder: (context, snapshot) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: dataModel.map((e) => createCard(e)).toList(),
                );
              }),
          const SizedBox(
            height: 50,
          ),
          inputTextField(setValue: setInput),
          const SizedBox(
            height: 50,
          ),
          createJumpSearchButton(
              setList, dataModel, input, setIndex, isSearchingFunction),
          isSearching ? const SizedBox() : OutputText(index),
        ]));
  }
}
