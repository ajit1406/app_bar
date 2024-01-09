import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  List<Map<String, dynamic>> listData = [
    {
      "name": 'Annapurna Kumari',
      "subTitle": "Hi I am anu😜 \nand working in hera pheri 3",
      "color": Colors.lime,
      "img": "assets/icons/ic_woman.png",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Raju',
      "subTitle": "Tiwari Seth ko 40 lakh dene hai 😥",
      "color": Colors.blue,
      "img": "assets/images/img_Raju.jpeg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Babu Bhaiya',
      "subTitle": "uthale re deva 😂😂",
      "color": Colors.lime,
      "img": "assets/images/img_babu.jpeg",
      "time": "11:11 am",
      "unReadCount": 1
    },
    {
      "name": 'Shyam',
      "subTitle": "Meri anuradha aise nhi ho sakti 😢😢",
      "color": Colors.green,
      "img": "assets/images/img_shyam.jpeg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": 'Anuradha',
      "subTitle": "welcome to lakshmi chit fund 😊",
      "color": Colors.pink,
      "img": "assets/images/img_anu.jpeg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Anjali',
      "subTitle": "welcome to lakshmi chit fund 👏",
      "color": Colors.orange,
      "img": "assets/images/img_anjali.jpeg",
      "time": "11:11 am",
      "unReadCount": 1
    },
    {
      "name": 'Munna Bhai',
      "subTitle": "bila chi nagin nigali 🐍🐍",
      "color": Colors.indigo,
      "img": "assets/images/img_munna.jpeg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Papu',
      "subTitle": "pachis din mein paise double 😲",
      "color": Colors.grey,
      "img": "assets/images/img_papu.jpeg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Tiwari',
      "subTitle": "Mere 40 lakh rupya de 💴",
      "color": Colors.red,
      "img": "assets/images/img_tot.jpeg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": 'Kachra Seth',
      "subTitle": "150 rupya dega 🤑",
      "color": Colors.blue,
      "img": "assets/images/img_kachra.jpeg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": 'Nanji Bhai',
      "subTitle": "Sala Naklii Mal Bejta hai 😠😡",
      "color": Colors.purple,
      "img": "assets/images/img_nanji.jpeg",
      "time": "11:11 am",
      "unReadCount": 1
    },
  ];

  List<Tab> tabs = <Tab>[
    Tab(text: 'Zeroth'),
    Tab(text: 'First'),
    Tab(text: 'Second'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("WhatsApp"),
        */ /*bottom: TabBar(
         tabs: <Widget>[
           Tab(
             icon: const Icon(Icons.call),
             text: titles[0],
           ),
           Tab(
             icon: const Icon(Icons.kitchen),
             text: titles[1],
           ),
           Tab(
             icon: const Icon(Icons.brightness_5_sharp),
             text: titles[2],
           ),
         ],
       ),*/ /*
      ),*/
      body: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: listData[index]["color"],
                maxRadius: 40,
                minRadius: 5,
                backgroundImage: AssetImage(listData[index]["img"]),
              ),
              title: Text("${listData[index]["name"]}",
                  style: TextStyle(fontSize: 22)),
              subtitle: Text(
                "${listData[index]["subTitle"]}",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: Column(
                children: [
                  Text(
                    "${listData[index]["time"]}",
                    style: TextStyle(color: Colors.green),
                  ),
                  listData[index]["unReadCount"] == 0
                      ? Container(
                          width: 0,
                        )
                      : Container(
                          width: 25,
                          height: 25,
                          child: Center(
                              child: Text(
                            "${listData[index]["unReadCount"]}",
                            style: TextStyle(color: Colors.white),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                ],
              ),
            );
          }),
    );
  }
}

/*class ChatTabPage extends StatelessWidget {
  const ChatTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Chatschat_tab.dart"),
      ),
    );
  }
}*/
