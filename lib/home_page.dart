import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrange[50],
        leading: Icon(Icons.accessibility_outlined),
        leadingWidth: 21,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(21))),
        shadowColor: Colors.grey,
        elevation: 5,
        flexibleSpace: Container(
          height: 20,
          color: Colors.orangeAccent,
        ),
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 20), child: Container()),
        actions: [
          /*Icon(
            Icons.camera,
          ),
          SizedBox(
            width: 21,
          ),
          Icon(
            Icons.favorite,
          ),*/
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
            ),
          ),
          PopupMenuButton(itemBuilder: (_) {
            return [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 5,
                    ),
                    Text("setting")
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.call),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Contact us")
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(
                      width: 5,
                    ),
                    Text("About us")
                  ],
                ),
              ),
            ];
          }),
        ],
      ),
    );
  }
}
