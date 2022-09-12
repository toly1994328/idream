import 'package:flutter/material.dart';

class MatrixShower extends StatelessWidget {
  final List<num> list16;

  const MatrixShower({super.key, required this.list16});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: buildLines(),
    );
  }

  List<Widget> buildLines() {
    List<Widget> result = [];
    final int count = list16.length ~/ 4;
    for (int i = 0; i < count; i++) {
      List<num> nums = [
        list16[i * 4 + 0], list16[i * 4 + 1], list16[i * 4 + 2], list16[i * 4 + 3]];
      result.add(LineNumShower(nums: nums));
    }
    return result;
  }
}

class LineNumShower extends StatelessWidget {
  final List<num> nums;

  const LineNumShower({super.key, required this.nums});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: nums.asMap().keys.map(_buildItemByIndex).toList(),
    );
  }

  Widget _buildItemByIndex(int index) {
    bool last = index == nums.length - 1;
    String endFix = last ? "" : ",";
    return Text(nums[index].toString() + endFix);
  }
}
