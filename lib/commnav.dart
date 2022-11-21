import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'comments.dart';
import 'mess.dart';
import 'package:intl/intl.dart';
import 'package:Afleet/privatereply.dart';
//import 'groupmess.dart';
import 'package:shared_preferences/shared_preferences.dart';

class communications2 extends StatefulWidget {
  const communications2(
      {Key? key,
      required this.username,
      required this.title1,
      required this.kala1,
      required this.school,
      required this.profpic,
      required this.klass,
      required this.tr})
      : super(key: key); //klass
  final List title1;
  final String klass;
  final String school;
  final bool kala1;
  final String tr;
  final String username;
  final List profpic;

  @override
  State<communications2> createState() => _communications2State();
}

class _communications2State extends State<communications2> {
  var info3;
  var lama;
  var now;
  var chckme;
  var leo;
  inmat() async {
    var headers = {
      'Authorization': 'Token ${widget.tr}',
    };
    final info2 = await http.get(Uri.parse('https://afleet.co.ke/information/'),
        headers:
            headers); //utf8.decode(responsev.bodyBytes) brings out the emoji
    var info = jsonDecode(utf8.decode(info2.bodyBytes)); //returns info
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.setString('comnav1', json.encode(info));

    //info3
    setState(() {
      info3 = info;
    });

    //}

    ;
  }

  String xnm = '';

  @override
  void initState() {
    super.initState();
    inmat();
    xnm = widget.klass.toString().replaceAll(' ', '');
    setState(() {
      //DateFormat('EEEE').format(date);
      this.now = DateFormat('EEEE d MMM').format(DateTime.now());
      //returns json body from api
      //this.courseblock = result1;
      this.leo = DateFormat.jm().format(DateTime.now());
    });
    fgr() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var mode = sharedPreferences.getString('comnav1');
      setState(() {
       info3 = jsonDecode(mode); 
      });
      
    }

    fgr();
  }

  @override
  Widget build(BuildContext context) {
    //inmat();
    //rint(title1);
    return info3 == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            backgroundColor:
                widget.kala1 ? Colors.grey.shade900 : Colors.grey.shade50,
            appBar: AppBar(
                elevation: 0,
                backgroundColor:
                    widget.kala1 ? Colors.grey.shade900 : Colors.grey.shade50,
                leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                title: Text(
                  "Timeline",
                  style: TextStyle(
                      color: !widget.kala1
                          ? Colors.grey.shade900
                          : Colors.grey.shade50),
                )),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),

                  /*Container(
                    width: MediaQuery.of(context).size.width*.95,
                    child: TextField(
          style: TextStyle(fontSize: 20.0),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            prefixIcon: Icon(Icons.search),
            hintText: "search",
            border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)
              ),
            focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: !widget.kala1?Colors.grey.shade300:Colors.grey.shade800, width: 32.0),
                      borderRadius: BorderRadius.circular(25.0)))),
                  ),SizedBox(height: 10,),*/
                  //Text(title1.toString()),
                  //,

                  /*
                      
                                        u['title'].contains('message') && 
                                                u['whoiswho'] ==
                                                    widget.user.toString()
                                            ? u['writer'] ==
                                                        widget.user
                                                            .toString() &&
                                                    u['to'] ==
                                                        widget.title.toString() 
                                                
                      */ /*&&ry['title']=='message' &&ry['to'].split(',')[0].toString() !=
                                  widget.klass.toString().replaceAll(',', '').replaceAll('(', '').replaceAll(')', '') &&
                         
                          ry['to'].split(',')[0].toString() != "all"&&
                          ry['title'].toString()=='Fees'
                          //////////////////////////
                            ry['to']
                              .split(',')[0]
                              .toString()
                              .replaceAll('[', '')
                              .toString() == xnm.toString() 
                      &&
                          */
                  /*
                          info3
                                                              .where((u) =>
                                                                  u['title']
                                                                      .contains(
                                                                          'message') &&
                                                                  u['whoiswho'] ==
                                                                      ry['id']
                                                                          .toString())
                           */

                  ...info3
                      .where((u) =>
                          u['whoiswho'].toString() == 'notification' &&
                          u['to']
                                  .split(',')[0]
                                  .toString()
                                  .replaceAll('[', '')
                                  .replaceAll(' ', '')
                                  .toString() ==
                              xnm.toString())
                      .toList()
                      .reversed
                      .map((ry) => ry['whoiswho'].toString() ==
                                  'notification' &&
                              ry['to']
                                      .split(',')[0]
                                      .toString()
                                      .replaceAll('[', '')
                                      .replaceAll(' ', '')
                                      .toString() ==
                                  xnm.toString()
                          ? InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      //  sum = 0;
                                      //var given_list = [1, 2, 3, 4, 5];

                                      return Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        color: !widget.kala1
                                            ? Colors.white
                                            : Colors.grey.shade900,
                                        child: SingleChildScrollView(
                                            child: Column(
                                          children: [
                                            Container(
                                              height: 10,
                                            ),
                                            // ListTile(),
                                            /*
                                                      "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                      */
                                            ListTile(
                                                onTap: () {
                                                  var chckme =
                                                      info3.indexOf(ry);
                                                  print(">.>>>>>>>>" +
                                                      chckme.toString());
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          FriendMess3(
                                                        title:
                                                            ry['id'].toString(),
                                                        //repl: chckme.toString(),
                                                        //newc: info3.toList(),
                                                        token: widget.tr,
                                                        myname: '',
                                                        user: widget.username,
                                                      ),
                                                    ), //MaterialPageRoute
                                                  );
                                                },
                                                tileColor: Colors.black12,
                                                leading: Icon(Icons.reply,
                                                    color: Colors.deepPurple),
                                                title:
                                                    Text("Reply to this post",
                                                        style: TextStyle(
                                                          color: widget.kala1
                                                              ? Colors.white
                                                              : Colors.black,
                                                        )),
                                                subtitle: Text("",
                                                    style: TextStyle(
                                                      color: !widget.kala1
                                                          ? Colors.white
                                                          : Colors.black,
                                                    ))),
                                            ListTile(
                                                onTap: () {
                                                  inmat();
                                                  chckme = info3.indexOf(ry);
                                                  print(">.>>>>>>>>" +
                                                      chckme.toString());
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          FriendMessX1(
                                                        title: ry['writer']
                                                            .toString(),
                                                        repl: chckme.toString(),
                                                        newc: info3.toList(),
                                                        token: widget.tr,
                                                        myname: '',
                                                        user: widget.username,
                                                      ),
                                                    ), //MaterialPageRoute
                                                  );
                                                },
                                                tileColor: Colors.black12,
                                                leading: Icon(
                                                    Icons
                                                        .chat_bubble_outline_outlined,
                                                    color: Colors.deepPurple),
                                                title: Text(
                                                    "Reply privately to ${ry['writer'].toString()}",
                                                    style: TextStyle(
                                                      color: widget.kala1
                                                          ? Colors.white
                                                          : Colors.black,
                                                    )),
                                                subtitle: Text("",
                                                    style: TextStyle(
                                                      color: !widget.kala1
                                                          ? Colors.white
                                                          : Colors.black,
                                                    ))),
                                          ],
                                        )),
                                        //bottoma navigation bar
                                      );
                                    });
                              },
                              child: Card(
                                  color: widget.kala1
                                      ? Colors.grey.shade900
                                      //.withOpacity(0.2)
                                      : Colors.grey.shade50,
                                  elevation: 0,
                                  child: Column(children: [
                                    /*Container(
                                    height: MediaQuery.of(context).size.height*.3,
                                    width: MediaQuery.of(context).size.width*.9,
                                
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                                image: DecorationImage(
                                  image: NetworkImage('https://rs5.rcnoc.com:2083/cpsess2186087691/viewer/home%2fafleetco%2fafleet.co.ke%2fmedia%2fimages/20221001_211706.jpg'),
                                   //   ry['image'].toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                                  ),*/
                                    //he im rn
                                    //Text( ry['whoiswho'].toString()),

                                    ListTile(
                                        //tileColor: widget.kala1?Colors.blueGrey.shade900:Colors.white,
                                        leading: CircleAvatar(
                                          radius: 22,
                                          backgroundColor: Colors.deepPurple,
                                          child: Text(ry['writer']
                                              .toString()
                                              .toUpperCase()
                                              .substring(0, 1)),
                                        ),
                                        title: Text(ry['writer'].toString(),
                                            style: TextStyle(
                                              color: widget.kala1
                                                  ? Colors.white
                                                  : Colors.black,
                                            )),
                                        subtitle: Text(
                                          ry['title'].toString(),
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: widget.kala1
                                                ? Colors.grey[300]
                                                : Colors.grey[500],
                                          ),
                                        ),
                                        trailing: InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                  context: context,
                                                  builder: (context) {
                                                    //  sum = 0;
                                                    //var given_list = [1, 2, 3, 4, 5];

                                                    return Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              .2,
                                                      color: !widget.kala1
                                                          ? Colors.white
                                                          : Colors
                                                              .grey.shade900,
                                                      child:
                                                          SingleChildScrollView(
                                                              child: Column(
                                                        children: [
                                                          Container(
                                                            height: 10,
                                                          ),
                                                          // ListTile(),
                                                          /*
                                                      "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                      */
                                                          ListTile(
                                                              onTap: () {
                                                                var chckme =
                                                                    info3
                                                                        .indexOf(
                                                                            ry);
                                                                print(">.>>>>>>>>" +
                                                                    chckme
                                                                        .toString());
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            FriendMess3(
                                                                      title: ry[
                                                                              'id']
                                                                          .toString(),
                                                                      //repl: chckme.toString(),
                                                                      //newc: info3.toList(),
                                                                      token:
                                                                          widget
                                                                              .tr,
                                                                      myname:
                                                                          '',
                                                                      user: widget
                                                                          .username,
                                                                    ),
                                                                  ), //MaterialPageRoute
                                                                );
                                                              },
                                                              tileColor: Colors
                                                                  .black12,
                                                              leading: Icon(
                                                                  Icons.reply,
                                                                  color: Colors
                                                                      .deepPurple),
                                                              title: Text(
                                                                  "Reply to this post",
                                                                  style:
                                                                      TextStyle(
                                                                    color: widget.kala1
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black,
                                                                  )),
                                                              subtitle: Text("",
                                                                  style:
                                                                      TextStyle(
                                                                    color: !widget.kala1
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black,
                                                                  ))),
                                                          ListTile(
                                                              
                                                                                                                                                         tileColor: Colors
                                                                  .black12,
                                                              leading: Icon(
                                                                  Icons
                                                                      .chat_bubble_outline_outlined,
                                                                  color: Colors
                                                                      .deepPurple),
                                                              title: Text(
                                                                  "Reply privately to ${ry['writer'].toString()}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: widget.kala1
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black,
                                                                  )),
                                                              subtitle: Text("",
                                                                  style:
                                                                      TextStyle(
                                                                    color: !widget.kala1
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black,
                                                                  ))),
                                                        ],
                                                      )),
                                                      //bottoma navigation bar
                                                    );
                                                  });
                                            },
                                            child: Icon(
                                              Icons.more_horiz_outlined,
                                              color: widget.kala1
                                                  ? Colors.white
                                                  : Colors.black,
                                            ))),
                                    ListTile(
                                      //leading:Icon(Icons.person_outlined,color: Colors.deepPurple,),

                                      title: Text(
                                        ry['mation'].toString() + ".",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                          color: !widget.kala1
                                              ? Colors.blueGrey.shade900
                                              : Colors.white,
                                        ),
                                      ),
                                      //trailing: Icon(Icons.notifications_outlined)
                                    ),
                                    ListTile(
                                      title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                var chckme = info3.indexOf(ry);
                                                print(">.>>>>>>>>" +
                                                    chckme.toString());
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        FriendMess3(
                                                      title:
                                                          ry['id'].toString(),
                                                      //repl: chckme.toString(),
                                                      //newc: info3.toList(),
                                                      token: widget.tr,
                                                      myname: '',
                                                      user: widget.username,
                                                    ),
                                                  ), //MaterialPageRoute
                                                );
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    .25,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      child: Icon(
                                                        Icons.comment,
                                                        size: 20,
                                                        color: !widget.kala1
                                                            ? Colors.grey
                                                            : Colors.blueGrey
                                                                .shade50,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 0,
                                                    ),
                                                    Text(
                                                      info3
                                                                  .map((u) =>
                                                                      u['title']
                                                                          .contains(
                                                                              'message') &&
                                                                      u['whoiswho'] ==
                                                                          ry['id']
                                                                              .toString())
                                                                  .toSet()
                                                                  .toList()
                                                                  .map((c) {})
                                                                  .length ==
                                                              1
                                                          ? ""
                                                          : info3
                                                              .where((u) =>
                                                                  u['title']
                                                                      .contains(
                                                                          'message') &&
                                                                  u['whoiswho'] ==
                                                                      ry['id']
                                                                          .toString())
                                                              .length
                                                              .toString(),
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: !widget.kala1
                                                            ? Colors.blueGrey
                                                                .shade900
                                                            : Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .6,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      ry['date']
                                                                  .split('|')[0]
                                                                  .toString() ==
                                                              now.toString()
                                                          ? "Today at " +
                                                              ry['date']
                                                                  .split('|')[1]
                                                                  .toString()
                                                          : ry['date']
                                                                  .split('|')[0]
                                                                  .toString() +
                                                              " at " +
                                                              ry['date']
                                                                  .split('|')[1]
                                                                  .toString(),
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: widget.kala1
                                                            ? Colors.grey[300]
                                                            : Colors.grey[500],
                                                      ),
                                                    ),
                                                  ]),
                                            )
                                          ]),
                                    ),

//heey
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            left: 20,
                                            right: 20,
                                            bottom: 5),
                                        child: Container(
                                          height: 0.3,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              8,
                                          color: widget.kala1
                                              ? Colors.grey[300]
                                              : Colors.grey[500],
                                        ),
                                      ),
                                    ),
                                  ])),
                            )
                          : Container(
                              //xnm.toString()
                              // child: Text(xnm +
                              //   ('1 blue' == '$xnm')
                              //      .toString()) //'1 blue'==ry['to'].split(',')[0].toString().replaceAll('[', '').toString()).toString()),
                              //child:  Text(Type(ry['to'].split(',')[0].toString().replaceAll('[', '').toString().replaceAll(' ', ''), [widget.klass.toString().replaceAll(',', '').replaceAll(' ', '').replaceAll('(', '').replaceAll(')', '')]) .toString()+" "+ry['to'].split(',')[0].toString().replaceAll('[', '').toString()+ " "+widget.klass.toString().replaceAll(',', '').replaceAll('(', '').replaceAll(')', '').toString()),

                              ))
                      .toList()
                ],
              ),
            ));
  }
}
