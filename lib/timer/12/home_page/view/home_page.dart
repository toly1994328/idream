import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../setting_page/setting_page.dart';
import '../bloc/bloc.dart';
import 'button_tools.dart';
import 'record_panel.dart';
import 'stopwatch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StopWatchBloc get stopWatchBloc => BlocProvider.of<StopWatchBloc>(context);

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
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      buildWhen: (p, n) => p.duration != n.duration,
      builder: (_, state) => StopwatchWidget(
        duration: state.duration,
        radius: radius,
        themeColor: Theme.of(context).primaryColor,
        secondDuration: state.secondDuration,
      ),
    );
  }

  Widget buildTools() {
   return BlocBuilder<StopWatchBloc, StopWatchState>(
      buildWhen: (p, n) => p.type != n.type,
      builder: (_, state) => ButtonTools(
        state: state.type,
        onRecoder: onRecoder,
        onReset: onReset,
        toggle: toggle,
      ),
    );
  }

  void onReset() => stopWatchBloc.add(const ResetStopWatch());

  void onRecoder() => stopWatchBloc.add(const RecordeStopWatch());

  void toggle() => stopWatchBloc.add(const ToggleStopWatch());

  Widget buildRecordPanel() {
    return Expanded(
      child: BlocBuilder<StopWatchBloc, StopWatchState>(
        buildWhen: (p, n) => p.durationRecord != n.durationRecord,
        builder: (_, state) => RecordPanel(
          record: state.durationRecord,
        ),
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
    String play = AppLocalizations.of(context)!.setting;
    return [
      PopupMenuItem<String>(
        height: 35,
        value: "设置",
        child: Center(
            child: Text(
          play,
          style: TextStyle(fontSize: 14),
        )),
      )
    ];
  }

  void _onSelectItem(String value) {
    if (value == "设置") {
      Navigator.of(context).push(Right2LeftRouter(child: const SettingPage()));
    }
  }
}

class Right2LeftRouter<T> extends PageRouteBuilder<T> {
  final Widget child;
  final int durationMs;
  final Curve curve;

  Right2LeftRouter(
      {required this.child,
      this.durationMs = 200,
      this.curve = Curves.fastOutSlowIn})
      : super(
            transitionDuration: Duration(milliseconds: durationMs),
            pageBuilder: (ctx, a1, a2) => child,
            transitionsBuilder: (ctx, a1, a2, child) => SlideTransition(
                  child: child,
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(CurvedAnimation(parent: a1, curve: curve)),
                ));
}
