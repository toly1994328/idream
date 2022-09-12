import 'package:flutter/material.dart';

enum StopWatchType {
  none, // 初始态
  stopped, // 已停止
  running, // 运行中
}

class ButtonTools extends StatelessWidget {
  final StopWatchType state;
  final VoidCallback? onReset;
  final VoidCallback? toggle;
  final VoidCallback? onRecoder;

  const ButtonTools({
    super.key,
    required this.state,
    this.onRecoder,
    this.onReset,
    this.toggle,
  });

  @override
  Widget build(BuildContext context) {
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
}
