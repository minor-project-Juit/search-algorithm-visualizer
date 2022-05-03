//6)%import 'dart:math';

// ignore: empty_constructor_bodies
class RandomData {
  late int data;
  late bool isFocus;
  RandomData(this.data, this.isFocus);
}

List<RandomData> reset(int index) {
  List<RandomData> dataModel = [];
  List<int> mupx = [1, 1, 2, 2, 2, 3, 3, 4, 4, 4];
  for (int i = 0; i < 10; i++) {
    int temp = i * mupx[i];
    dataModel.add(RandomData(temp, false));
  }
  if (index != -1) {
    dataModel[index].isFocus = true;
  }
  return dataModel;
}
