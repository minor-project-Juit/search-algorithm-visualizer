import '../model/input_data.dart';

Future<int> binarySearchLocal(List<RandomData> dataModel, Function updateUI,
    int data, Function setIndex, Function isSearching, int l, int r) async {
  int low = l;
  int high = r;

  while (low <= high) {
    int mid = (low + (high - low) / 2).toInt();
    await Future.delayed(const Duration(milliseconds: 700));
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

Future<int> exponentialSearch(List<RandomData> dataModel, Function updateUI,
    int data, Function setIndex, Function isSearching) async {
  if (dataModel[0].data == data) {
    await Future.delayed(const Duration(milliseconds: 700));
    isSearching(true);
    updateUI(0);
    return 0;
  }

  int i = 1;
  while (i < 9 && dataModel[i].data <= data) {
    await Future.delayed(const Duration(milliseconds: 700));
    isSearching(true);
    updateUI(i);
    i = i * 2;
  }

  var r = [i, 9];
  r.sort();
  await Future.delayed(const Duration(milliseconds: 700));
  isSearching(true);
  updateUI(i);

  return binarySearchLocal(
      dataModel, updateUI, data, setIndex, isSearching, i ~/ 2, r[0]);
}
