import '../model/input_data.dart';

Future<int> linearSearch(List<RandomData> dataModel, Function updateUI,
    int data, Function setIndex, Function isSearching) async {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(milliseconds: 500));
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
  updateUI(-1);
  await Future.delayed(const Duration(milliseconds: 500));
  return -1;
}
