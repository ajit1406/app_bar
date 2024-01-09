import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Map<String, dynamic>> listPopupMenuItems = [
    {"icon": Icons.settings, "title": "Settings", "route": '/settings'},
    {"icon": Icons.info_outline, "title": "About Us"},
    {"icon": Icons.call, "title": "Contact Us"},
    {"icon": Icons.account_circle, "title": "My Profile"},
    {"icon": Icons.logout, "title": "Sign Out"}
  ];

  String? mInitialValue;

  @override
  void initState() {
    super.initState();
    mInitialValue = listPopupMenuItems[0]['title'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: Text('Second'),
            leading: Icon(Icons.nightlight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(21)),
            ),
            shadowColor: Colors.grey,
            elevation: 5,
            bottom: PreferredSize(
                child: FlutterLogo(), preferredSize: Size(double.infinity, 50)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_sharp)),
              PopupMenuButton(
                  initialValue: mInitialValue,
                  elevation: 11,
                  shadowColor: Colors.yellow,
                  tooltip: "Settings",
                  onSelected: (value) {
                    mInitialValue = value.toString();
                    setState(() {});
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  itemBuilder: (_) {
                    return listPopupMenuItems
                        .map((eachData) => PopupMenuItem(
                            value: eachData['title'],
                            onTap: () {
                              print(eachData['title']);
                            },
                            child: Row(
                              children: [
                                Icon(eachData['icon']),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(eachData['title'])
                              ],
                            )))
                        .toList();
                  })
            ],
            flexibleSpace: Container(
              color: Colors.blue,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                    title: Text('${index + 1}'),
                  )))
        ],
      ),
    );
  }
}
