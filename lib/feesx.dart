import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

///import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:core';
import 'package:intl/intl.dart';

class Friendfees extends StatefulWidget {
  //in memory of the first messenger i built in highschool
  Friendfees({
    Key? key,
    required this.title,
    //required this.imageme,
    required this.token,
    required this.newc,
    required this.kala1,
    required this.repl,
    //randombla
    required this.myname, //class teacher
    required this.user, //class
  }) : super(key: key);
  String title;

  String myname; //restaurant name
  //String imageme;
  List newc;
  String repl;
  bool kala1;
  String token; //ofcouse this is for pass grant
  String user; //this is the user

  @override
  State<Friendfees> createState() => _FriendfeesState();
}

class _FriendfeesState extends State<Friendfees> {
  var now;
  var leo;
  String xrx = '0';
  var indx;
  bool tf = true;
  bool pinned = false;
  var counter = 90;
  var chdata;
  List chatdata = [];
  List chatdata2 = [];
  List chatdata3 = [];
  List chatdata4 = [];
  List ff = [];
  String blue = '';
  String you = '';
  final scrollController = ScrollController();

  final titleController = TextEditingController();
  final titleControlle = TextEditingController();

  Future getWeather3x() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsev = //http://172.16.12.17:8000/
        await http.get(
      Uri.parse('https://afleet.co.ke/information/'),
    );
    // headers: headers);
    var results = jsonDecode(
        utf8.decode(responsev.bodyBytes)); //utf8.decode(response.bodyBytes);
    setState(() {
      this.chatdata = results;
    });
    var gghvbh =
        chatdata.where((u) => u['whoiswho'] == widget.user.toString()).length;
    print(gghvbh);
    xrx = gghvbh.toString();
    print(xrx);

    //print(utf8.decode(chatd));
  }

  Future getmea3() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsev = //http://172.16.12.17:8000/
        await http.put(
      Uri.parse('https://afleet.co.ke/notefx/${int.parse(cx)}/'),

      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'offline',
        'numbx': blue.toString(),
        'useryou': widget.user.toString()
      }),
    );
    http.Response responsevvb = //http://172.16.12.17:8000/
        await http.get(
      Uri.parse('https://afleet.co.ke/information/'),
    );
    // headers: headers);
    var results = jsonDecode(
        utf8.decode(responsevvb.bodyBytes)); //utf8.decode(response.bodyBytes);

    this.chatdata = results;

    var gghvbh =
        chatdata.where((u) => u['whoiswho'] == widget.user.toString()).length;
    print(gghvbh);
    xrx = gghvbh.toString();
    print(xrx);
    blue = xrx;
    http.Response responsee = //http://172.16.12.17:8000/
        await http.put(
      Uri.parse('https://afleet.co.ke/notefx/${int.parse(cx)}/'),

      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'online',
        'numbx': '${xrx}',
        'useryou': widget.user.toString()
      }),
    );
    // headers: headers);

    //print(utf8.decode(chatd));
  }

  Future getmeyou() async {
    String token = widget.token.toString();
    var x = chatdata2
        .map((ex) => ex['useryou'].toString().contains(widget.user.toString())
            ? you = ex['id']
            : 'null')
        .toString();
    print(x);
    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsev = //http://172.16.12.17:8000/
        await http.post(
      Uri.parse('https://afleet.co.ke/notefx/${int.parse(you)}/'),

      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'offline',
        'numbx': blue.toString(),
        'useryou': widget.user.toString()
      }),
    ); //hellio my name id rono
    // headers: headers);

    //print(utf8.decode(chatd));
  }

  Future getmea4() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responseo = //http://172.16.12.17:8000/
        await http.get(
      Uri.parse('https://afleet.co.ke/information/'),
    );
    // headers: headers);
    var results = jsonDecode(
        utf8.decode(responseo.bodyBytes)); //utf8.decode(response.bodyBytes);
    this.chatdata = results;
    // });
    var gghvbh =
        chatdata.where((u) => u['whoiswho'] == widget.user.toString()).length;
    print(gghvbh);
    xrx = gghvbh.toString();
    print(xrx);
    blue = xrx;

    http.Response responsev = //http://172.16.12.17:8000/
        await http.put(
      //put
      Uri.parse('https://afleet.co.ke/notef/'), //notefx/${int.parse(cx)}/

      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'offline',
        'numbx': '${xrx}',
        'useryou': widget.user.toString()
      }),
    );
    // headers: headers);

    //print(utf8.decode(chatd));
  }

  int gh = 10;
  String cx = '';
  offnd() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      //http req to  and from server
      counter++;

      if (counter < 5) {
        print('Cancel timer');
        timer.cancel();
      } else {
        //this.getnumbx();
        this.getWeather3x();
      }
    });
  }
/**
chatdata2.map((ex) => ex['useryou'].toString().contains(widget.user.toString())
            ? you = ex['id'].toString()
            : 'null'); */

  Future checkme() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsev2 = //http://172.16.12.17:8000/
        await http.get(
      Uri.parse('https://afleet.co.ke/information/'),
    );

    http.Response responsev = //http://172.16.12.17:8000/
        await http.get(
      Uri.parse('https://afleet.co.ke/notef/'),
    );
    // headers: headers);
    var results2 = jsonDecode(responsev2.body);
    var results = jsonDecode(responsev.body); //utf8.decode(response.bodyBytes);
    setState(() {
      this.chatdata2 = results;
      this.chdata = results2;
    });
    print(chatdata2);
    print(chdata);
    int crx = 0;
    var x = chatdata2
        .map((ex) => ex['useryou'].toString().contains(widget.user.toString())
            ? ex['id']
            : 'null')
        .toString(); //
    print(x);
    chatdata2
        .map((ex) => ex['useryou'].toString().contains(widget.user.toString())
            ? cx = ex['id'].toString()
            : 'null')
        .toString();
    print('######################' + cx);
    cx == '' ? getnumbx() : getmea3();

    List cvcv = []; //dispo
    //print(xrx);
    print('????????????????????????????????' + xrx.toString());

    // print('????????????????????????????????' + cvcv.length.toString());
  }

  Future getnumbx() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsex1 = await http.post(
      Uri.parse('https://afleet.co.ke/notef/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'online',
        'numbx': '${xrx}',
        'useryou': widget.user.toString(),
      }),
    );
    print(responsex1);
  }

  Future getnumbx2() async {
    String token = widget.token.toString();

    print('here' + token);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    var count = 10;
    String utf8convert(String text) {
      List<int> bytes = text.toString().codeUnits;
      return utf8.decode(bytes);
    }

    http.Response responsex1 = await http.post(
      Uri.parse('https://afleet.co.ke/notef/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'state': 'offline',
        'numbx': '${xrx}',
        'useryou': widget.user.toString(),
      }),
    );
    print(responsex1);
  }

  var nxc;
  @override
  void initState() {
    super.initState();
    checkme();
    //var nc
    getnumbx();

    offnd();

    //_tabController = new TabController(vsync: this, length: lbottom.length);
    // getWeather3x();
  }

  @override
  void dispose() {
    super.dispose();
    //getnumbx();
    //getmeyou();
    getnumbx2();
    counter = 0;
  }

  Future createAlbum() async {
    print(utf8.encode(titleController.text));
    //print(titleController.text);
    //pinned
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/information/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      }, //'id','sender','message_me','receiver','time'
      body: jsonEncode(<String, String>{
        //'id': titleController.text,this is an autofield
        'title': 'message', //an actual title
        'whoiswho': widget.user.toString(),
        'writer': widget.user.toString(), //class teacher
        'mation': pinned
            ? [indx, titleController.text].toString()
            : titleController.text,
        'to': widget.title.toString(), //class
        'date': now.toString() + '|' + leo.toString(),
      }),
    );
    //print(jsonDecode(response1.data.toString()) );
    //works => print(token['token']);
    print(jsonDecode(response1.body.toString()));
    if (response1.statusCode == 201) {
      print("yea it happened");
      print(jsonDecode(response1.body.toString()));
    }
    ;

    //});
//save the token for next time
  }

  void rono2(String id) {
    showDialog(
        //barrierColor: Colors.grey.shade700,
        //student id card here
        context: context,
        builder: (context) {
          /*  Future.delayed(Duration(seconds: 1), () {
              Navigator.of(context).pop(true);
            });*/
          return AlertDialog(
              backgroundColor: Colors.grey.shade700,
              title: Text('swickchat'),
              content: Container(
                  // height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Colors.grey.shade700,
                  ),
                  width: double.infinity,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                          ListTile(
                              title: Text(
                            id.split(",").last.replaceAll(']', ''),
                            style: TextStyle(color: Colors.white),
                          )),
                          Text("replying to:"),
                          ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            tileColor: Colors.grey.shade900,
                            title: Container(
                              child: Text(
                                chatdata[int.parse(id.split(",").first.replaceAll('[', ''))]
                                                ['mation']
                                            .split(',')
                                            .length >
                                        1
                                    ? chatdata[int.parse(id
                                            .split(",")
                                            .first
                                            .replaceAll('[', ''))]['mation']
                                        .split(',')
                                        .last
                                        .replaceAll(']', '')
                                    : chatdata[int.parse(id
                                        .split(",")
                                        .first
                                        .replaceAll('[', ''))]['mation'],
                                style: TextStyle(color: Colors.grey),
                              ),
                              //subtitle:
                            ),
                          )
                        ]),
                      ))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: widget.kala1
                                  ? Colors.black
                                  : Colors.white,
        appBar: AppBar(elevation: 0, title: Text("Fees Receipts")),
        body: SingleChildScrollView(
            child: Column(children: [
          ...chatdata
              .toList()
              .reversed
              .map((ry) => ry['title'].contains('Fees') &&
                      ry['to'] ==
                          widget.user.toString() //widget.title.toString()
                  ? ListTile(
                      title: Text(ry['mation'].toString(),style:TextStyle(color:!widget.kala1
                                  ? Colors.black
                                  : Colors.white,)),
                      subtitle: Text(
                          "sent on ${ry['date'].split('|').first.toString()}",style:TextStyle(color:!widget.kala1
                                  ? Colors.black
                                  : Colors.white,)))
                  : SizedBox())
              .toList()
        ])));
  }
}
