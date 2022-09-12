import 'package:flutter/material.dart';

class LineNumShower extends StatelessWidget {
  final List<num> nums;

  const LineNumShower({super.key, required this.nums});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: nums.asMap().keys.map(_buildItemByIndex).toList(),
    );
  }

  Widget _buildItemByIndex(int index) {
    bool last = index == nums.length - 1;
    String endFix = last ? "" : ",";
    return Text(nums[index].toString() + endFix);
  }
}
