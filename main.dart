import 'package:flutter/material.dart';
import 'package:whatsappclone/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsAppClone(),
    );
  }
}

class WhatsAppClone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WhatsAppCloneState();
  }
}

class WhatsAppCloneState extends State<WhatsAppClone>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('WhatsApp Clone'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (c, a1, a2) => SearchPage(),
                      transitionsBuilder: (c, anim, a2, child) =>
                          FadeTransition(opacity: anim, child: child),
                      transitionDuration: Duration(milliseconds: 0),
                    ),
                  );
                },
                child: Icon(Icons.search),
              ),
              Icon(Icons.more_vert),
            ],
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Container(
              child: Icon(
                Icons.camera_alt,
                size: 80.0,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'M.kewat',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Text(
                                      'hi',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Divider(),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'M.kewat',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Text(
                                      'hi',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Divider(),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'M.kewat',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Text(
                                      'hi',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Divider(),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'M.kewat',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Text(
                                      'hi',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Divider(),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'M.kewat',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.done_all,
                                    color: Colors.blue,
                                    size: 18.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 05.0),
                                    child: Text(
                                      'hi',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        color: Colors.white,
                        child: Material(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.green,
                          elevation: 2.0,
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 60.0,
                              width: 60.0,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/04/25/18/07/halcyon-1352522_960_720.jpg'),
                              ),
                            ),
                            Positioned(
                              bottom: -1.0,
                              right: 1.0,
                              child: Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.green[500],
                                  elevation: 0.0,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  'My Status',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Tap to add status uodate',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.white,
                            child: Material(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              elevation: 5.0,
                              child: Icon(
                                Icons.edit,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            color: Colors.white,
                            child: Material(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.green,
                              elevation: 5.0,
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  height: 0,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          'To start calling contact who have',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18.0),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WhatsApp, tap',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 18.0),
                            ),
                            Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Container(
                                  height: 20.0,
                                  width: 20.0,
                                  color: Colors.white,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(50.0),
                                    elevation: 0.0,
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.black54,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: -3.0,
                                  top: -3.0,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black54,
                                    size: 16.0,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              ' at the bottom of your',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          'screen',
                          style:
                              TextStyle(color: Colors.black54, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.0, right: 20.0),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.white,
                            child: Material(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              elevation: 5.0,
                              child: Icon(
                                Icons.video_call,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              Container(
                                height: 60.0,
                                width: 60.0,
                                color: Colors.white,
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.green,
                                  elevation: 5.0,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 11.0,
                                top: 11.0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
