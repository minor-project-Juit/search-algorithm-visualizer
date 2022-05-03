import 'package:searching_algorithm_visualization/model/input_data.dart';

Future<int> interpolationSearch(List<RandomData> dataModel, Function updateUI,
    int data, Function setIndex, Function isSearching) async {
  int lowIndex = 0;
  int highIndex = 9;

  while (lowIndex <= highIndex &&
      data >= dataModel[lowIndex].data &&
      data <= dataModel[highIndex].data) {
    if (lowIndex == highIndex) {
      if (dataModel[lowIndex].data == data) {
        await Future.delayed(const Duration(milliseconds: 700));
        isSearching(true);
        updateUI(lowIndex);
        return lowIndex;
      }

      return -1;
    }

    int pos = ((lowIndex +
                ((highIndex - lowIndex) *
                    (data - dataModel[lowIndex].data) /
                    (dataModel[lowIndex].data - dataModel[highIndex].data)))
            .toInt())
        .abs();
    await Future.delayed(const Duration(milliseconds: 700));
    isSearching(true);
    updateUI(pos);

    // Condition of target found
    if (dataModel[pos].data == data) {
      setIndex(pos);
      isSearching(false);
      return pos;
    }

    // If x is larger, x is in upper part
    if (dataModel[pos].data < data) {
      lowIndex = pos + 1;
    }

    // If x is smaller, x is in the lower part
    else {
      highIndex = pos - 1;
    }
  }
  setIndex(-1);
  isSearching(false);
  updateUI(-1);
  await Future.delayed(const Duration(milliseconds: 500));
  return -1;
}
