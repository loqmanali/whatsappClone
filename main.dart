import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.white.withOpacity(0.0),
        ),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.orange.withOpacity(0.9),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text(
            'WhatsApp Clone',
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                ),
              ],
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TabBar(
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                // indicator: UnderlineTabIndicator(
                //     borderSide: BorderSide(width: 5.0),
                //     insets: EdgeInsets.symmetric(horizontal: 16.0)),
                // labelPadding: EdgeInsets.only(left: 8, right: 8),
                tabs: [
                  new Tab(
                    icon: new Icon(
                      Icons.camera_alt,
                    ),
                  ),
                  new Tab(text: 'CHATS'),
                  new Tab(text: 'STATUS'),
                  new Tab(text: 'CALLS'),
                ],
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.orange, Colors.grey],
              ),
            ),
          ),
          bottomOpacity: 1,
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              // width: 50,
              child: new Text("This is call Tab View"),
            ),
            // Container(
            //     margin: EdgeInsets.all(40),
            //     child:
            Column(children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(03.0),
                    margin: EdgeInsets.only(left: 10.0),
                    height: 55.0,
                    width: 55.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
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
                            'Akhays kumar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.done_all,
                              color: Colors.lightBlue,
                              size: 18,
                            ),
                            // Icon(Icons.done),
                            Padding(
                              padding: EdgeInsets.only(left: 05.0),
                              child: Text(
                                'hi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
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
            ]),
            new Text("This is notification Tab View"),
            new Text("This is notification Tab View"),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
