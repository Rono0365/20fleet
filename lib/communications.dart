import 'package:Afleet/groupmess.dart';
import 'package:Afleet/search.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'comments.dart';
import 'mess.dart';
import 'package:intl/intl.dart';
import 'package:Afleet/privatereply.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'groupmess.dart';

class communications extends StatefulWidget {
  const communications(
      {Key? key,
      required this.username,
      required this.students,
      required this.subs,
      required this.title1,
      required this.kala1,
      required this.school,
      required this.profpic,
      required this.klass,
      required this.tr})
      : super(key: key); //klass
  final List title1;
  final List students;
  final String klass;
  final String school;
  final List subs;
  final bool kala1;
  final String tr;
  final String username;
  final List profpic;

  @override
  State<communications> createState() => _communicationsState();
}

class _communicationsState extends State<communications> {
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
    //info3

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sharedPreferences.setString('comnav2', json.encode(info));

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
    fgr() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var mode = sharedPreferences.getString('comnav2');
      setState(() {
        info3 = jsonDecode(mode);
      });
    }

    fgr();
    inmat();
    xnm = widget.klass.toString().replaceAll(' ', '');
    setState(() {
      //DateFormat('EEEE').format(date);
      this.now = DateFormat('EEEE d MMM').format(DateTime.now());
      //returns json body from api
      //this.courseblock = result1;
      this.leo = DateFormat.jm().format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    nbv(String sub) {
      print(widget.subs);
      //if(){}
      String x = '';
      var exx = widget.subs
          .toList()
          .map((g) => g['headline'] == sub.toString() ? x = g['code'] : '');
      print("eexxxx" + exx.toString());
      print(x);
      return x.toString();
    }

    fgr() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var mode = sharedPreferences.getString('comnav2');

      info3 = jsonDecode(mode);
    }

    fgr();
    //inmat();
    //rint(title1);
    return info3 == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor:
                  widget.kala1 ? Colors.black : Colors.grey.shade50,
              appBar: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        //height:1.0,
                        width: 1.0,
                        color: Colors.deepPurple,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 36.0)),
                  tabs: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(
                        Icons.chat_outlined,
                        color: !widget.kala1
                            ? Colors.blueGrey.shade900
                            : Colors.grey.shade100,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.transparent, //Colors.red,
                      )
                    ]),
                    Icon(
                      Icons.notifications,
                      color: !widget.kala1
                          ? Colors.blueGrey.shade900
                          : Colors.grey.shade100,
                    )
                  ]),
              body: TabBarView(children: [
                Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.endFloat,
                    floatingActionButton: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => searchQ(
                                  misearch: widget.students,
                                  profpic: widget.profpic,
                                  kala1: widget.kala1,
                                  username: widget.username,
                                  token: widget.tr)), // sky2['username']
                        );
                      },
                      child: Icon(Icons.mail_outline_outlined),
                    ),
                    backgroundColor: widget.kala1 ? Colors.black : Colors.white,
                    //width: MediaQuery.of(context).size.width,
                    body: SingleChildScrollView(
                        child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                          elevation: 0.0,
                          color: Colors.transparent,
                          child: Column(children: [
                            ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              tileColor:
                                  widget.kala1 ? Colors.black : Colors.white,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FriendMess(
                                      title: xnm.toString(),
                                      repl: chckme.toString(),
                                      newc: info3.toList(),
                                      token: widget.tr,
                                      myname: '',
                                      user: widget.username.toString(),
                                    ),
                                  ), //MaterialPageRoute
                                );
                              },
                              leading: Container(
                                  child: Stack(children: [
                                ...widget.profpic.map(
                                  (ui) => ui['username1'] == "are"
                                      ? CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.transparent,

                                          backgroundImage: NetworkImage(
                                            ui['image'],
                                          ), //ui['image'],
                                        )
                                      : SizedBox(),
                                ),
                              ])),
                              title: Text(
                                "Class Teacher",
                                style: TextStyle(
                                  color: !widget.kala1
                                      ? Colors.blueGrey.shade900
                                      : Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                "Message",
                                style: TextStyle(
                                  color: !widget.kala1
                                      ? Colors.blueGrey.shade900
                                      : Colors.white,
                                ),
                              ),
                              trailing: InkWell(
                                child: Stack(children: [
                                  RotatedBox(
                                    quarterTurns: 90,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.deepPurple,
                                        child: Icon(
                                          Icons.arrow_back_ios_new,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: -2,
                                      right: -1,
                                      child: CircleAvatar(
                                          radius: 7,
                                          backgroundColor:
                                              Colors.transparent, //white,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor:
                                                Colors.transparent, //red,
                                            child:
                                                null /*Center(
                                                    child: Text(
                                                        int.parse(crpt
                                                                    .toString()) >
                                                                5
                                                            ? ''
                                                            : crpt,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)))*/
                                            ,
                                          )))
                                ]),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FriendMess(
                                        repl: '',
                                        newc: [],
                                        title: 'Class Teacher',
                                        token: widget.tr,
                                        myname: '',
                                        user: widget.username.toString(),
                                      ),
                                    ), //MaterialPageRoute
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: 0.3,
                              width: MediaQuery.of(context).size.width * .90,
                              color: widget.kala1
                                  ? Colors.grey[300]
                                  : Colors.grey[500],
                            ),
                          ])),
                      //here are your groups

                      ...info3
                          .where((vo) => vo['date'].split('|').length == 3
                              ? vo['date'].split('|')[2].toString() ==
                                  widget.username.toString()
                              : vo['date'].split('|')[1].toString() ==
                                  widget.username.toString())
                          .toList()
                          .map((u) => u['whoiswho'].toString())
                          .toSet()
                          .toList()
                          .reversed
                          .map((ry) => ry.toString() !=
                                      widget.username.toString() &&
                                  ry.length != 4
                              ? Card(
                                  elevation: 0.0,
                                  color: Colors.transparent,
                                  child: Column(children: [
                                    ListTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      tileColor: widget.kala1
                                          ? Colors.black
                                          : Colors.white,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FriendMess2(
                                              title: ry.toString(),
                                              token: widget.tr,
                                              myname: '',
                                              user: widget.username.toString(),
                                              code: nbv(ry),
                                            ),
                                          ), //MaterialPageRoute
                                        );
                                        /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FriendMess(
                                              repl: '',
                                              newc: [],
                                              title: ry.toString(),
                                              token: widget.tr,
                                              myname: '',
                                              user: widget.username.toString(),
                                            ),
                                          ), //MaterialPageRoute
                                        );*/
                                        /*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FriendMess(
                                              title: xnm.toString(),
                                              repl: chckme.toString(),
                                              newc: info3.toList(),
                                              token: widget.tr,
                                              myname: '',
                                              user: widget.username.toString(),
                                            ),
                                          ), //MaterialPageRoute
                                        );*/
                                      },
                                      leading: Stack(children: [
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: Colors.transparent,
                                          child: Text(
                                              ry.toString().substring(0, 1)),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                              radius: 7,
                                              child:
                                                  Icon(Icons.group, size: 10)),
                                        )
                                      ]), //ui['image'],

                                      title: Text(
                                        ry.toString(),
                                        style: TextStyle(
                                          color: !widget.kala1
                                              ? Colors.blueGrey.shade900
                                              : Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Message",
                                        style: TextStyle(
                                          color: !widget.kala1
                                              ? Colors.blueGrey.shade900
                                              : Colors.white,
                                        ),
                                      ),
                                      trailing: InkWell(
                                        child: Stack(children: [
                                          RotatedBox(
                                            quarterTurns: 90,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: CircleAvatar(
                                                radius: 10,
                                                backgroundColor:
                                                    Colors.deepPurple,
                                                child: Icon(
                                                  Icons.arrow_back_ios_new,
                                                  color: Colors.white,
                                                  size: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: -2,
                                              right: -1,
                                              child: CircleAvatar(
                                                  radius: 7,
                                                  backgroundColor: Colors
                                                      .transparent, //white,
                                                  child: CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor: Colors
                                                        .transparent, //red,
                                                    child:
                                                        null /*Center(
                                                    child: Text(
                                                        int.parse(crpt
                                                                    .toString()) >
                                                                5
                                                            ? ''
                                                            : crpt,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)))*/
                                                    ,
                                                  )))
                                        ]),
                                        onTap: () {},
                                      ),
                                    ),
                                    Container(
                                      height: 0.3,
                                      width: MediaQuery.of(context).size.width *
                                          .90,
                                      color: widget.kala1
                                          ? Colors.grey[300]
                                          : Colors.grey[500],
                                    ),
                                  ]))
                              : SizedBox()),
                      //User will only see message that is sent back to him
                      ...info3
                          .where((vo) => vo['to'] == widget.username)
                          .toList()
                          .map((u) => u['writer'].toString())
                          .toSet()
                          .toList()
                          .reversed
                          .map((ry) => ry.toString() !=
                                  widget.username.toString()
                              ? Card(
                                  elevation: 0.0,
                                  color: Colors.transparent,
                                  child: Column(children: [
                                    ListTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      tileColor: widget.kala1
                                          ? Colors.black
                                          : Colors.white,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FriendMess(
                                              title: ry,
                                              repl: chckme.toString(),
                                              newc: info3.toList(),
                                              token: widget.tr,
                                              myname: '',
                                              user: widget.username.toString(),
                                            ),
                                          ), //MaterialPageRoute
                                        );
                                      },
                                      leading: Container(
                                          child: Stack(children: [
                                        ...widget.profpic.map(
                                          (ui) => ui['username1'] ==
                                                  ry.toString()
                                              ? CircleAvatar(
                                                  radius: 17,
                                                  backgroundColor:
                                                      Colors.transparent,

                                                  backgroundImage: NetworkImage(
                                                    ui['image'],
                                                  ), //ui['image'],
                                                )
                                              : SizedBox(
                                                  //ui['image'],
                                                  ),
                                        ),
                                      ])),
                                      title: Text(
                                        ry.toString(),
                                        style: TextStyle(
                                          color: !widget.kala1
                                              ? Colors.blueGrey.shade900
                                              : Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Message",
                                        style: TextStyle(
                                          color: !widget.kala1
                                              ? Colors.blueGrey.shade900
                                              : Colors.white,
                                        ),
                                      ),
                                      trailing: InkWell(
                                        child: Stack(children: [
                                          RotatedBox(
                                            quarterTurns: 90,
                                            child: CircleAvatar(
                                              radius: 12,
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: CircleAvatar(
                                                radius: 10,
                                                backgroundColor:
                                                    Colors.deepPurple,
                                                child: Icon(
                                                  Icons.arrow_back_ios_new,
                                                  color: Colors.white,
                                                  size: 12,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: -2,
                                              right: -1,
                                              child: CircleAvatar(
                                                  radius: 7,
                                                  backgroundColor: Colors
                                                      .transparent, //white,
                                                  child: CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor: Colors
                                                        .transparent, //red,
                                                    child:
                                                        null /*Center(
                                                    child: Text(
                                                        int.parse(crpt
                                                                    .toString()) >
                                                                5
                                                            ? ''
                                                            : crpt,
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)))*/
                                                    ,
                                                  )))
                                        ]),
                                        onTap: () {},
                                      ),
                                    ),
                                    Container(
                                      height: 0.3,
                                      width: MediaQuery.of(context).size.width *
                                          .90,
                                      color: widget.kala1
                                          ? Colors.grey[300]
                                          : Colors.grey[500],
                                    ),
                                  ]))
                              : SizedBox())
                    ]))),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .2,
                                            color: !widget.kala1
                                                ? Colors.white
                                                : Colors.black,
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
                                                            title: ry['id']
                                                                .toString(),
                                                            //repl: chckme.toString(),
                                                            //newc: info3.toList(),
                                                            token: widget.tr,
                                                            myname: '',
                                                            user:
                                                                widget.username,
                                                          ),
                                                        ), //MaterialPageRoute
                                                      );
                                                    },
                                                    tileColor: Colors.black12,
                                                    leading: Icon(Icons.reply,
                                                        color:
                                                            Colors.deepPurple),
                                                    title: Text(
                                                        "Reply to this post",
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
                                                /*ListTile(
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
                                                      ))),*/
                                              ],
                                            )),
                                            //bottoma navigation bar
                                          );
                                        });
                                  },
                                  child: Card(
                                      color: widget.kala1
                                          ? Colors.black
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
                                            leading: Container(
                                                child: Stack(children: [
                                              ...widget.profpic.map(
                                                (ui) => ui['username1'] ==
                                                        ry['writer']
                                                    ? CircleAvatar(
                                                        radius: 15,
                                                        backgroundColor:
                                                            Colors.transparent,

                                                        backgroundImage:
                                                            NetworkImage(
                                                          ui['image'],
                                                        ), //ui['image'],
                                                      )
                                                    : SizedBox(),
                                              ),
                                            ])),
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
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .2,
                                                          color: !widget.kala1
                                                              ? Colors.white
                                                              : Colors.grey
                                                                  .shade900,
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
                                                                        info3.indexOf(
                                                                            ry);
                                                                    print(">.>>>>>>>>" +
                                                                        chckme
                                                                            .toString());
                                                                    Navigator
                                                                        .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                FriendMess3(
                                                                          title:
                                                                              ry['id'].toString(),
                                                                          //repl: chckme.toString(),
                                                                          //newc: info3.toList(),
                                                                          token:
                                                                              widget.tr,
                                                                          myname:
                                                                              '',
                                                                          user:
                                                                              widget.username,
                                                                        ),
                                                                      ), //MaterialPageRoute
                                                                    );
                                                                  },
                                                                  tileColor: Colors
                                                                      .black12,
                                                                  leading: Icon(
                                                                      Icons
                                                                          .reply,
                                                                      color: Colors
                                                                          .deepPurple),
                                                                  title: Text(
                                                                      "Reply to this post",
                                                                      style:
                                                                          TextStyle(
                                                                        color: widget.kala1
                                                                            ? Colors.white
                                                                            : Colors.black,
                                                                      )),
                                                                  subtitle: Text(
                                                                      "",
                                                                      style:
                                                                          TextStyle(
                                                                        color: !widget.kala1
                                                                            ? Colors.white
                                                                            : Colors.black,
                                                                      ))),
                                                              ListTile(
                                                                  onTap: () {
                                                                    var chckme =
                                                                        info3.indexOf(
                                                                            ry);
                                                                    print(">.>>>>>>>>" +
                                                                        chckme
                                                                            .toString());
                                                                    Navigator
                                                                        .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                FriendMessX1(
                                                                          title:
                                                                              ry['writer'].toString(),
                                                                          repl:
                                                                              chckme.toString(),
                                                                          newc:
                                                                              info3.toList(),
                                                                          token:
                                                                              widget.tr,
                                                                          myname:
                                                                              '',
                                                                          user:
                                                                              widget.username,
                                                                        ),
                                                                      ), //MaterialPageRoute
                                                                    );
                                                                  },
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
                                                                            ? Colors.white
                                                                            : Colors.black,
                                                                      )),
                                                                  subtitle: Text(
                                                                      "",
                                                                      style:
                                                                          TextStyle(
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
                                                    var chckme =
                                                        info3.indexOf(ry);
                                                    print(">.>>>>>>>>" +
                                                        chckme.toString());
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            FriendMess3(
                                                          title: ry['id']
                                                              .toString(),
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
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            .25,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          child: Icon(
                                                            Icons.comment,
                                                            size: 20,
                                                            color: !widget.kala1
                                                                ? Colors.grey
                                                                : Colors
                                                                    .blueGrey
                                                                    .shade50,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 0,
                                                        ),
                                                        Text(
                                                          info3
                                                                      .map((u) =>
                                                                          u['title'].contains(
                                                                              'message') &&
                                                                          u['whoiswho'] ==
                                                                              ry['id']
                                                                                  .toString())
                                                                      .toSet()
                                                                      .toList()
                                                                      .map(
                                                                          (c) {})
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
                                                                ? Colors
                                                                    .blueGrey
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
                                                                      .split('|')[
                                                                          0]
                                                                      .toString() ==
                                                                  now.toString()
                                                              ? "Today at " +
                                                                  ry['date']
                                                                      .split('|')[
                                                                          1]
                                                                      .toString()
                                                              : ry['date']
                                                                      .split('|')[
                                                                          0]
                                                                      .toString() +
                                                                  " at " +
                                                                  ry['date']
                                                                      .split(
                                                                          '|')[1]
                                                                      .toString(),
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            color: widget.kala1
                                                                ? Colors
                                                                    .grey[300]
                                                                : Colors
                                                                    .grey[500],
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
                )
              ]),
            ));
  }
}
