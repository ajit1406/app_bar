import 'package:app_bar/tabs/call_tab.dart';
import 'package:app_bar/tabs/chat_tab.dart';
import 'package:app_bar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController mTabController;
  String mtitle = "Chats";

  @override
  void initState() {
    super.initState();

    mTabController = TabController(length: 3, vsync: this);

    mTabController.addListener(() {
      print(mTabController.index);
      if (mTabController.index == 0) {
        mtitle = 'Chats';
      } else if (mTabController.index == 1) {
        mtitle = 'Status';
      } else {
        mtitle = 'Calls';
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mtitle),
        bottom: TabBar(controller: mTabController, tabs: [
          Tab(icon: Icon(Icons.chat), child: Text("Chats")),
          Tab(icon: Icon(Icons.update), child: Text("Status")),
          Tab(icon: Icon(Icons.phone), child: Text("call")),
        ]),
      ),
      body: TabBarView(controller: mTabController, children: [
        ChatTabPage(),
        StatusTabPage(),
        CallTabPage(),
      ]),
    );
  }
}
