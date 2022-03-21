//6)%import 'dart:math';

// ignore: empty_constructor_bodies
class RandomData {
  late int data;
  late bool isFocus;
  RandomData(this.data, this.isFocus);
}

List<RandomData> reset(int index) {
  List<RandomData> dataModel = [];
  for (int i = 0; i < 10; i++) {
    //int temp = Random().nextInt(100);
    int temp = i;
    dataModel.add(RandomData(temp, false));
  }
  if (index != -1) {
    dataModel[index].isFocus = true;
  }
  return dataModel;
}
