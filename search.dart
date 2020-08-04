import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchPageState();
  }
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 01.5,
          title: Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.teal[600],
                  size: 30.0,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 20.0),
                    contentPadding: EdgeInsets.only(left: 15.0),
                    hintText: 'Search...',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10.0),
            child: Column(
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
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
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
                                      fontSize: 14.0, color: Colors.black45),
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
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
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
                                      fontSize: 14.0, color: Colors.black45),
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
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
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
                                      fontSize: 14.0, color: Colors.black45),
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
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
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
                                      fontSize: 14.0, color: Colors.black45),
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
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
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
                                      fontSize: 14.0, color: Colors.black45),
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
          ),
        ),
      ),
    );
  }
}
