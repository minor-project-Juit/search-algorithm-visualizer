import '../model/input_data.dart';

Future<int> binarySearch(List<RandomData> dataModel, Function updateUI,
    int data, Function setIndex, Function isSearching) async {
  int low = 0;
  int high = dataModel.length - 1;

  while (low <= high) {
    int mid = (low + (high - low) / 2).toInt();
    await Future.delayed(const Duration(milliseconds: 500));
    isSearching(true);
    updateUI(mid);
    if (dataModel[mid].data == data) {
      setIndex(mid);
      isSearching(false);
      return mid;
    }
    if (dataModel[mid].data < data) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  setIndex(-1);
  isSearching(false);
  updateUI(-1);
  await Future.delayed(const Duration(milliseconds: 500));
  return -1;
}
