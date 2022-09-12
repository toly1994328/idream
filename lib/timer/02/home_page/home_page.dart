import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'stopwatch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum StopWatchType {
  none, // 初始态
  stopped, // 已停止
  running, // 运行中
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: buildActions(),
      ),
      body: Column(
        children: [
          buildStopwatchPanel(),
          buildRecordPanel(),
          buildTools(StopWatchType.running)
        ],
      ),
    );
  }

  Widget buildStopwatchPanel() {
    double radius = MediaQuery.of(context).size.shortestSide / 2 * 0.75;
    Duration duration =
        const Duration(minutes: 3, seconds: 28, milliseconds: 50);
    return StopwatchWidget(
      radius: radius,
      duration: duration,
    );
  }

  Widget buildTools(StopWatchType state) {
    bool running = state == StopWatchType.running;
    bool stopped = state == StopWatchType.stopped;
    Color activeColor = const Color(0xff3A3A3A);
    Color inactiveColor = const Color(0xffDDDDDD);
    Color resetColor = stopped ? activeColor : inactiveColor;
    Color flagColor = running ? activeColor : inactiveColor;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 50,
        children: [
          if (state != StopWatchType.none)
            GestureDetector(
              child: Icon(Icons.refresh, size: 28, color: resetColor),
              onTap: stopped ? onReset : null,
            ),
          FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            child:
                running ? const Icon(Icons.stop) : const Icon(Icons.play_arrow),
            onPressed: toggle,
          ),
          if (state != StopWatchType.none)
            GestureDetector(
              child: Icon(Icons.flag_outlined, size: 28, color: flagColor),
              onTap: running ? onRecoder : null,
            ),
        ],
      ),
    );
  }

  void onReset() {}

  void onRecoder() {}

  void toggle() {}

  Widget buildRecordPanel() {
    return Expanded(
      child: Container(
          // color: Colors.red,
          ),
    );
  }

  List<Widget> buildActions() {
    return [
      PopupMenuButton<String>(
        itemBuilder: _buildItem,
        onSelected: _onSelectItem,
        icon: const Icon(
          Icons.more_vert_outlined,
          color: Color(0xff262626),
        ),
        position: PopupMenuPosition.under,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      )
    ];
  }

  List<PopupMenuEntry<String>> _buildItem(BuildContext context) {
    return const [
      PopupMenuItem<String>(
        height: 35,
        value: "设置",
        child: Center(
            child: Text(
          "设置",
          style: TextStyle(fontSize: 14),
        )),
      )
    ];
  }

  void _onSelectItem(String value) {}
}

//
