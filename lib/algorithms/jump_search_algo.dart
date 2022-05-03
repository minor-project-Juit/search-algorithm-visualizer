import 'dart:math';

import '../model/input_data.dart';

Future<int> jumpSearch(List<RandomData> dataModel, Function updateUI, int data,
    Function setIndex, Function isSearching) async {
  int size = dataModel.length;
  int jump = 0;
  int start = 0;
  while (dataModel[jump].data <= data && jump < dataModel.length) {
    start = jump;
    jump = jump + sqrt(size).ceil();
    await Future.delayed(const Duration(milliseconds: 700));
    updateUI(jump);
    if (jump > size - 1) {
      jump = size;
    }
  }
  for (int i = start; i < size; i++) {
    await Future.delayed(const Duration(milliseconds: 700));
    isSearching(true);
    updateUI(i);
    if (dataModel[i].data == data) {
      setIndex(i);
      isSearching(false);
      return i;
    }
  }
  setIndex(-1);
  isSearching(false);

  await Future.delayed(const Duration(milliseconds: 500));
  updateUI(-1);
  return -1;
}
