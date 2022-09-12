import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'button_tools.dart';
import 'stopwatch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Ticker _ticker;
  Duration _duration = Duration.zero;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_onTick);
  }

  Duration dt = Duration.zero;
  Duration lastDuration = Duration.zero;

  void _onTick(Duration elapsed) {
    setState(() {
      dt = elapsed - lastDuration;
      _duration += dt;
      lastDuration = elapsed;
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: buildActions(),
      ),
      body: Column(
        children: [buildStopwatchPanel(), buildRecordPanel(), buildTools()],
      ),
    );
  }

  Widget buildStopwatchPanel() {
    double radius = MediaQuery.of(context).size.shortestSide / 2 * 0.75;
    return StopwatchWidget(
      radius: radius,
      duration: _duration,
    );
  }

  StopWatchType _type = StopWatchType.none;

  Widget buildTools() {
    return ButtonTools(
      state: _type,
      onRecoder: onRecoder,
      onReset: onReset,
      toggle: toggle,
    );
  }

  void onReset() {
    setState(() {
      _duration = Duration.zero;
      _type = StopWatchType.none;
    });
  }

  void onRecoder() {}

  void toggle() {
    bool running = _type == StopWatchType.running;
    if(running){
      _ticker.stop();
      lastDuration = Duration.zero;
    }else{
      _ticker.start();
    }
    setState(() {
      _type = running ? StopWatchType.stopped : StopWatchType.running;
    });
  }

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
