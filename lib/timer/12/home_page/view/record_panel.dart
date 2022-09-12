import 'package:flutter/material.dart';

import '../model/time_record.dart';

class RecordPanel extends StatelessWidget {
  final List<TimeRecord> record;

  const RecordPanel({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'IBMPlexMono', color: Colors.black),
        child: ListView.builder(
          // reverse: true,
          itemBuilder: _buildItemByIndex,
          itemCount: record.length,
        ),
      ),
    );
  }

  final EdgeInsets itemPadding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 4);

  Widget _buildItemByIndex(BuildContext context, int index) {
    int reverseIndex = (record.length - 1) - index;
    bool lightIndex = reverseIndex == record.length - 1;
    Color themeColor = Theme.of(context).primaryColor;
    Color? indexColor = lightIndex ? themeColor : null;
    return Row(
      children: [
        Padding(
          padding: itemPadding,
          child: Text(
            reverseIndex.toString().padLeft(2, '0'),
            style: TextStyle(color: indexColor),
          ),
        ),
        const Spacer(flex: 1,),
        Text(durationToString(record[reverseIndex].record)),
        const Spacer(flex: 4,),
        Padding(
          padding: itemPadding,
          child: Text("+" + durationToString(record[reverseIndex].addition)),
        ),
      ],
    );
  }

  String durationToString(Duration duration) {
    int minus = duration.inMinutes % 60;
    int second = duration.inSeconds % 60;
    int milliseconds = duration.inMilliseconds % 1000;
    String commonStr =
        '${minus.toString().padLeft(2, "0")}:${second.toString().padLeft(2, "0")}';
    String highlightStr = ".${(milliseconds ~/ 10).toString().padLeft(2, "0")}";
    return commonStr + highlightStr;
  }
}
