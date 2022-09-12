import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
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
          buildTools()
        ],
      ),
    );
  }

  Widget buildStopwatchPanel(){
    double radius = MediaQuery.of(context).size.shortestSide/2*0.75;
    return Container(
      height: radius*2,
      color: Colors.blue,
    );
  }

  Widget buildTools(){
    return Container(
      height: 80,
      color: Colors.yellow,
    );
  }

  Widget buildRecordPanel(){
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }

  List<Widget> buildActions(){
    return [
      PopupMenuButton<String>(
        itemBuilder: _buildItem,
        onSelected: _onSelectItem,
        icon: const Icon(
          Icons.more_vert_outlined,
          color: Color(0xff262626),
        ),
        position:PopupMenuPosition.under,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      )
    ];
  }


  List<PopupMenuEntry<String>> _buildItem(BuildContext context) {
    return const [
      PopupMenuItem<String>(
        height: 35,
        value: "设置",
        child: Center(child: Text("设置",style: TextStyle(fontSize: 14),)),
      )
    ];
  }

  void _onSelectItem(String value) {

  }
}


//