import 'package:Afleet/feesx.dart';
import 'package:collection/collection.dart';
import 'commnav.dart';
import 'communications.dart';
import 'Transit.dart';
import 'drawer.dart';
//import 'package:escholar/.dart';
import 'events.dart';
import 'imagechange.dart';
import 'logincred.dart';
import 'package:get/get.dart';
import 'ransitsetings.dart';
import 'groupmess.dart';
import 'noticeboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SplashScreen.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'mess.dart';
import 'bookstore.dart';
import 'package:intl/intl.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'notifications.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Uri _url = Uri.parse('afleet.africa');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afleet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key,
      required this.title,
      required this.token,
      required this.userid})
      : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String token;
  final String userid;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  var value;
  bool darkmode = true;
  var subjects;
  Color light3 = Colors.white10;
  Color Subject = Colors.blueGrey.shade50;
  Color light2 = Colors.blueGrey.shade50; //Subject
  Color light = Colors.black; //scaffold
  Color lighttext =
      Colors.blueGrey.shade50; //Color light2text = Colors.grey.shade900;

  var sky2;
  var value2;
  int currt = 0;
  var value3;
  var mtv;
  var alone;
  var leo;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool nm = false;
  var info2;
  var index;
  bool lean = false;
  var info3;
  var musk;
  Color newcor = Colors.deepPurple;
  Color oldcor = Colors.purple;
  late TabController _tabController;
  //var newcor;
  var now;
  int ex5 = 0;
  int exc = 0;
  int ex = 0;
  int exx = 0;
  var crpt;
  var yoi;
  var cx99;
  var cx992 = [];
  var cx199;
  var xrx;
  var v2prime = [];
  var gechyu;
  var hot1;
  var this2;
  var profpic;
  var nofmsg;
  //late TabController _tabController;
  List vb = [];
  //List haro = [];
  var gmen;
  var week_area;
  //
  List haro = [];
  List la = [];
  List la2 = [];
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  final List<Color> colors2 = <Color>[
    Colors.cyan,
    Colors.lightBlue,
    Colors.green,
    Colors.deepPurple,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.pink
  ];

  final List<Color> colors = <Color>[
    Colors.cyan.shade100,
    Colors.lightBlue.shade100,
    Colors.green.shade100,
    Colors.deepPurple.shade100,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100
  ];
  Future getMe() async {
    String token = widget.token.toString();
    String id = widget.userid.toString();
    //int cv = int.parse(id) - 1;

    print('here' + token);
    print('here' + id);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    http.Response responsev = await http
        .get(Uri.parse('https://afleet.co.ke/me/$id'), headers: headers);
    var xcv = jsonDecode(responsev.body);
    setState(() {
      this.sky2 = xcv;
      raw() async {
        final SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();

        sharedPreferences.setString('sky2', json.encode(sky2));
        sharedPreferences.setString('now', json.encode(now));
      }

      raw();
      //sharedPreferences.remove('value2');
      //sharedPreferences.('token', light);
      //here you'll get the value of the username
      //the usernbame is unique thus you can use it as nany user driver// teacher // student
      // value = sky2;
    });
    //print(sky2);
  }

  var tess;
  Future getWeather() async {
    String token = widget.token.toString();
    print(token);
    print(widget.token); // wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
//https://afleet.co.ke/HW/
    final tranzo = await http.get(Uri.parse('https://afleet.co.ke/stages/'),
        headers: headers);
    final picpic = await http.get(Uri.parse('https://afleet.co.ke/profpic/'),
        headers: headers);
    //https://afleet.co.ke/information/
    final info2 = await http.get(Uri.parse('https://afleet.co.ke/information/'),
        headers: headers);

    final responsex = await http.get(Uri.parse('https://afleet.co.ke/HW/'),
        headers: headers); //headers: headers
    //nofmsg
    final nfmsg = await http.get(Uri.parse('https://afleet.co.ke/notef/'),
        headers: headers
        // Send authorization headers to the backend.
        );
    final responsev = await http
        .get(Uri.parse('https://afleet.co.ke/students/'), headers: headers
            // Send authorization headers to the backend.
            ); //headers: headers
    //http.Response responsex = await http
    //  .get(Uri.parse('https://afleet.co.ke/id/1/')); //get via token
    http.Response response1 = await http.get(
        Uri.parse('https://afleet.co.ke/Sbuss/'),
        headers: headers); //get via token headers: headers
    http.Response v2 = //http://172.16.12.17:8000/ + http://192.168.100.74:8000/
        await http.get(Uri.parse('https://afleet.co.ke/rollcall/'),
            headers: headers);
    http.Response response77 = await http
        .get(Uri.parse('https://afleet.co.ke/transolution/'), headers: headers);
    var result5 = jsonDecode(tranzo.body);
    var von2 = jsonDecode(v2.body);
    var notmsg = jsonDecode(nfmsg.body);
    var magix = jsonDecode(picpic.body);
    var result77 = jsonDecode(response77.body);
    var info = jsonDecode(utf8.decode(info2.bodyBytes)); //returns info
    var result1 = jsonDecode(response1.body); //returns json body from api
    var results = jsonDecode(responsev.body); //returns json body from api
    var resultx = jsonDecode(responsex.body);
    setState(() {
      //DateFormat('EEEE').format(date);
      this.week_area = DateFormat(' d MMM').format(DateTime.now());
      this.leo = DateFormat('EEEE').format(DateTime.now());
      this.now = DateFormat('EEEE d MMM')
          .format(DateTime.now()); //returns json body from api
    }); //subjects
    setState(() {
      this.value = results;
      this.v2prime = von2;
      //this.value3 = info;
      this.yoi = result77;
      this.value2 = resultx;
      this.this2 = notmsg;
      this.info3 = info;
      this.profpic = magix;
      this.value3 = result1;
      this.alone = result5;
    });
    /*
    this.value = results;
      //this.value3 = info;
      this.yoi = result77;
      this.value2 = resultx;
      this.this2 = notmsg;
      this.info3 = info;
      this.profpic = magix;
      this.value3 = result1;
      this.alone = result5;
    
     */
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    //sharedPreferences.remove('value2');
    //sharedPreferences.('token', light);
    //sharedPreferences.setString('v2prime', json.encode(v2prime));

    sharedPreferences.setString('value2', json.encode(value2));
    //value3 == null && value == null
    sharedPreferences.setString('value3', json.encode(value3));
    sharedPreferences.setString('value', json.encode(value));
    sharedPreferences.setString('yoi', json.encode(yoi));
    //value3 == null && value == null
    sharedPreferences.setString('this2', json.encode(this2));
    sharedPreferences.setString('info3', json.encode(info3));
    sharedPreferences.setString('profpic', json.encode(profpic));
    //value3 == null && value == null
    sharedPreferences.setString('alone', json.encode(alone));

    xnote(String order) {
      //
      exx++;
      return exx < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "You have new messages",
              payload: 'r',
            )
          : '';
    }

    xls(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has started it's transit",
              payload: 'r',
            )
          : '';
    }

    beam(String order) {
      //ex = 0;
      ex5++;
      return ex5 < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has arrived in school",
              payload: 'r',
            )
          : '';
    }

    var resch =
        yoi.map((i) => i['userN'] == sky2['username'] ? vb.add(i['bi']) : null);
    //var milast = vb.last;
    print(resch);

    var xon =
        info3.map((th) => th['to'] == sky2['username'] ? la.add(th) : null);

    print(xon);
    var gghvbh = info3.where((u) => u['whoiswho'] == sky2['username']).length;
    print(gghvbh);
    xrx = gghvbh.toString(); //already done 42

    var x = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx99 = ex['numbx'].toString()
            : 'null')
        .toString(); //
    var kilosh = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx199 = ex['state'].toString()
            : 'null')
        .toString(); //
    print(x);
    print(kilosh);

    this.crpt = la.length.toString();
    print(crpt);
    print(la.length.toString());

    String xb = la.length.toString();
    print(xb);
    final la2 = la;
    print(la2);
    //mtv = xb; //get the info value

    var cvdf = value3.map((x) => vb.last.toString() == x['id'].toString()
        ? haro.add(value3.indexOf(x))
        : '');
    print(cvdf);
    print(this.haro);
    this.hot1 = haro.last;
    print("<<<<<<<<<<>>>>>>>>>" + cvdf.toString());
    //setsategoes here
    this.gechyu = value3[haro.last]['commute'];
    print(gechyu);
    print(kilosh + cx99);
    print(cx199);
    if (cx99 == xrx) {
      nm = false;
      print("-----------------------------------------------");
      print("________________DONE__________________________");
    } else {
      print(cx199);
      if (cx199 == 'offline' && int.parse(xrx) > int.parse(cx99)) {
        xnote("message");
        //print("Should call note");
        nm = true;
      } // 23 26
      print(cx99.toString() + "    " + xrx.toString());
      print('++++++++++++++not done++++++++++++++++++++++++++++++');
    }

    int.parse(xrx) > int.parse(cx99) && cx199 == 'offline'
        ? xnote("message")
        : '';
    gechyu == 'on' ? xls("SchoolBus has started it's transit") : '';
    gechyu == 'arrived' ? beam("School bus") : '';
    this.haro.clear();
    this.la.clear();
    var crpt2 = crpt;
    print(crpt2);
  }

  List<IconData> listicon = [
    Icons.receipt_long,
    //Icons.account_balance,

    Icons.call,
    Icons.group,
    //Icons.question_answer,
    //Icons.calendar_today,
    Icons.child_care_outlined

    //Icons.exit_to_app,
  ];
  List<IconData> lbottom = [
    Icons.school_outlined,
    Icons.schedule,
    Icons.notifications_active,
    Icons.directions_bus
  ];

  List lbottomtext = ["Dashboard", "Schedule", "Info", "Transit"];

  String token = '';
  //TabController _tabController;
  //TabController _tabController;
  xls3(String order) {
    //ex = 0;
    exc++;
    return exc < 2
        ? Ninotify.showNotification(
            id: 2,
            title: order,
            body: "Checking for your classes",
            payload: 'r',
          )
        : '';
  }

  offnd() {
    var counter = 90;
    Timer.periodic(Duration(seconds: 5), (timer) {
      //http req to  and from server
      counter++;

      if (counter == 0) {
        //counter = 15;
        print('Cancel timer');
        //timer.cancel();
      } else {
        this.getWeather();
        this.getMe();
      }
    });
  }
  //TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: lbottom.length);
    fgr() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
/*
sharedPreferences.setString('yoi', yoi.toString());
    //value3 == null && value == null
    sharedPreferences.setString('this2', this2.toString());
    sharedPreferences.setString('info3', info3.toString());
    sharedPreferences.setString('profpic', profpic.toString());
    //value3 == null && value == null
    sharedPreferences.setString('alone', alone.toString());
    ////////
    ///
      var o2 = jsonDecode(sharedPreferences.getString('value2'));
      var o3 = jsonDecode(sharedPreferences.getString('value3'));
      var o4 = jsonDecode(sharedPreferences.getString('value'));
      var o5 = jsonDecode(sharedPreferences.getString('yoi'));
      var o6 = jsonDecode(sharedPreferences.getString('this2'));
      var o8 = jsonDecode(sharedPreferences.getString('profpic'));
      var o9 = jsonDecode(sharedPreferences.getString('alone'));
      var oo = jsonDecode(sharedPreferences.get('sky2'));
*/
      var mode = sharedPreferences.getBool('darkmode');
      var o2 = jsonDecode(sharedPreferences.getString('value2'));
      var o3 = jsonDecode(sharedPreferences.getString('value3'));
      var o4 = jsonDecode(sharedPreferences.getString('value'));
      var o5 = jsonDecode(sharedPreferences.getString('yoi'));
      var o6 = jsonDecode(sharedPreferences.getString('this2'));
      var o7 = jsonDecode(sharedPreferences.getString('info3'));

      var o8 = jsonDecode(sharedPreferences.getString('profpic'));
      var o9 = jsonDecode(sharedPreferences.getString('alone'));
      var o11 = jsonDecode(sharedPreferences.getString('now'));

      var oo = jsonDecode(sharedPreferences.get('sky2'));
      // = jsonDecode(
      this.value2 = o2; //jsonDecode(o2);
      this.value3 = o3; //jsonDecode(o3);
      this.value = o4;
      this.yoi = o5;

      this.this2 = o6;
      this.info3 = o7;
      this.profpic = o8;
      this.alone = o9;
      this.now = o11;
      //this.v2prime = o12;
      this.sky2 = oo;
      setState(() {
        darkmode = mode == null ? true : mode;
        light = darkmode ? Colors.black : Colors.grey.shade50;
        lighttext = darkmode ? Colors.grey.shade50 : Colors.grey.shade900;
      });
    }

    fgr();
    //set state for darkmode
    getWeather();
    getMe();
    offnd();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String token = widget.token.toString();
    final tess = info3 == null
        ? []
        : info3.map((ry) => ry['whoiswho'].toString() == 'notification' &&
                ry['to']
                        .split(',')[0]
                        .toString()
                        .replaceAll('[', '')
                        .replaceAll(' ', '')
                        .toString() ==
                    '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}' &&
                ry['date'].split('|').first.toString() == now.toString()
            ? ry
            : '');
    List drawerpath = [
      // Gradebook(

      //  ),
      //fees(),
      //contacts(),
      // teachers(

      //),
      // help(),
      //cal,
      calx(
        kala1: darkmode,
      )
    ];

    print(gechyu);
    if (gechyu == 'arrived') {
      //do stuff
      beam(String order) {
        //ex = 0;
        ex5++;
        return ex5 < 2
            ? Ninotify.showNotification(
                id: 2,
                title: order,
                body: "Your SchoolBus has arrived in school",
                payload: 'x',
              )
            : '';
      }

      beam('School Bus');
    }
    if (gechyu == 'off') {
      ex = 0;
    }

    xls(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has started it's transit",
              payload: 'r',
            )
          : '';
    }

    onoop() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
/*
sharedPreferences.setString('yoi', yoi.toString());
    //value3 == null && value == null
    sharedPreferences.setString('this2', this2.toString());
    sharedPreferences.setString('info3', info3.toString());
    sharedPreferences.setString('profpic', profpic.toString());
    //value3 == null && value == null
    sharedPreferences.setString('alone', alone.toString());
*/
      var mode = sharedPreferences.getBool('darkmode');
      var o2 = jsonDecode(sharedPreferences.getString('value2'));
      var o3 = jsonDecode(sharedPreferences.getString('value3'));
      var o4 = jsonDecode(sharedPreferences.getString('value'));
      var o5 = jsonDecode(sharedPreferences.getString('yoi'));
      var o6 = jsonDecode(sharedPreferences.getString('this2'));
      var o7 = jsonDecode(sharedPreferences.getString('info3'));

      var o8 = jsonDecode(sharedPreferences.getString('profpic'));
      var o9 = jsonDecode(sharedPreferences.getString('alone'));
      var oo = jsonDecode(sharedPreferences.get('sky2'));
      // = jsonDecode(
      this.value2 = o2; //jsonDecode(o2);
      this.value3 = o3; //jsonDecode(o3);
      this.value = o4;
      this.yoi = o5;
      this.this2 = o6;
      this.info3 = o7;
      this.profpic = o8;
      this.alone = o9;
      this.sky2 = oo;
    }

    onoop();

    gechyu != 'off' ? '' : ''; //xls3("classes")
  /*  vinote(String vn) {
      var gghvbh = info3.where((u) => u['whoiswho'] == vn).length;
      print("vinote  ........" + gghvbh.toString());
      //> int.parse(cx992.last.toString())

      return int.parse(gghvbh.toString());
    }

    vinote2(String vn) {
      var cx997;
      var gge = this2
        ..map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx997 = ex['numbx'].toString()
            : 'null').toString();
      print(gge);
      print(cx997);
      //print("vinote2  ........" + gge;
      //> int.parse(cx992.last.toString())

      return int.parse(cx997.toString());
    }
*/
    // print(">>>>>>>>>>>>><<<<<<<<<<<<<<"+homework.toString());
    return value2 == null && value3 == null && value == null
        ? Scaffold(
            backgroundColor: light,
            body: Center(
              child: CircularProgressIndicator(),
            ))
        : Scaffold(
            backgroundColor: light,
            drawer: Drawer(
                child: Scaffold(
                    backgroundColor: light,
                    /*appBar: PreferredSize(
                      preferredSize: Size.fromHeight(70.0),
                      child: AppBar(
                        leading: Row(children: [
                          SizedBox(width: 5),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.withOpacity(0.2),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //                 <--- border radius here
                                    )),
                            child: Icon(Icons.person_outline),
                          ),
                        ]),
                        backgroundColor: light,
                        elevation: 0.0,
                        iconTheme: IconThemeData(color: Colors.deepPurple),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: darkmode
                                ? InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Icon(
                                          darkmode
                                              ? Icons.light_mode
                                              : Icons.dark_mode,
                                          color: Colors.deepPurple),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        light = Colors.grey.shade50;
                                        lighttext = Colors.grey.shade900;
                                        darkmode = false;
                                      });
                                    },
                                  )
                                : InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.white
                                          : Colors.grey.shade900,
                                      radius: 30,
                                      child: Icon(
                                          darkmode
                                              ? Icons.light_mode
                                              : Icons.dark_mode,
                                          color: Colors.deepPurple),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        light = Colors.grey.shade900;
                                        lighttext = Colors.grey.shade50;
                                        darkmode = true;
                                      });
                                    },
                                  ),
                          )
                        ],
                      ),
                    ),*/ // here the desired height(child: AppBar()),
                    //appBar: AppBar(leading:CircleAvatar(child: Center(child: Text("K"),),),backgroundColor: Colors.transparent,elevation: 0,),
                    bottomNavigationBar: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: darkmode
                                  ? InkWell(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Icon(
                                            darkmode
                                                ? Icons.light_mode
                                                : Icons.dark_mode,
                                            color: Colors.deepPurple),
                                      ),
                                      onTap: () async {
                                        setState(() async {
                                          light = Colors.grey.shade50;
                                          lighttext = Colors.grey.shade900;
                                          darkmode = false;

                                          final SharedPreferences
                                              sharedPreferences =
                                              await SharedPreferences
                                                  .getInstance();
                                          sharedPreferences.remove('darkmode');
                                          //sharedPreferences.('token', light);
                                          sharedPreferences.setBool(
                                              'darkmode', darkmode);
                                          const snackBar = SnackBar(
                                            content:
                                                Text("Changing in a few..."),
                                          );

                                          // Find the ScaffoldMessenger in the widget tree
                                          // and use it to show a SnackBar.
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        });
                                      },
                                    )
                                  : InkWell(
                                      child: CircleAvatar(
                                        backgroundColor: darkmode
                                            ? Colors.white
                                            : Colors.grey.shade900,
                                        radius: 20,
                                        child: Icon(
                                            darkmode
                                                ? Icons.light_mode
                                                : Icons.dark_mode,
                                            color: Colors.deepPurple),
                                      ),
                                      onTap: () {
                                        setState(() async {
                                          light = Colors.black;
                                          lighttext = Colors.grey.shade50;
                                          darkmode = true;
                                          final SharedPreferences
                                              sharedPreferences =
                                              await SharedPreferences
                                                  .getInstance();
                                          sharedPreferences.remove('darkmode');
                                          //sharedPreferences.('token', light);
                                          sharedPreferences.setBool(
                                              'darkmode', darkmode);
                                          const snackBar = SnackBar(
                                            content:
                                                Text("Changing in a few..."),
                                          );

                                          // Find the ScaffoldMessenger in the widget tree
                                          // and use it to show a SnackBar.
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        });
                                      },
                                    ),
                            )
                          ]), // ghcfg gcytyc
                    ),
                    body: RefreshIndicator(
                      onRefresh: () async {
                        offnd();
                        //Do whatever you want on refrsh.Usually update the date of the listview
                      },
                      child: SingleChildScrollView(
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                  ),
                                  ...value.map(
                                    (kn) => kn['username'] != sky2['username']
                                        ? Container()
                                        : Column(children: [
                                            Row(children: [
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left: 10.0),
                                                  child: Stack(children: [
                                                    ...profpic.toList().map(
                                                          (ui) => ui['username1'] ==
                                                                  sky2[
                                                                      'username']
                                                              ? CircleAvatar(
                                                                  radius: 22,
                                                                  backgroundColor: Colors
                                                                      .deepPurple
                                                                      .shade50
                                                                      .withOpacity(
                                                                          0.1),

                                                                  backgroundImage:
                                                                      NetworkImage(
                                                                    ui['image'],
                                                                  ), //ui['image'],
                                                                )
                                                              : SizedBox(),
                                                        ),
                                                  ]))
                                            ]),
                                            ListTile(
                                              title: Container(
                                                //height: MediaQuery.of(context).size.height*0.3,
                                                child: Text(
                                                    '${kn["firstname"]} ${kn["lastname"].toString()}',
                                                    style: GoogleFonts.lato(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: lighttext)),
                                              ),
                                              /*subtitle: Text(
                                                kn["School"],
                                                style:
                                                    TextStyle(color: lighttext),
                                              ),*/
                                              subtitle: Text('${kn["Class"]}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: lighttext)),
                                            ),
                                            Container(
                                              height: 10,
                                            ),
                                            Center(
                                              child: Container(
                                                  height: 0.3,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      15,
                                                  color: lighttext),
                                            ),
                                            Container(
                                              height: 20,
                                            ),
                                            /*Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.25,
                                              child: ListView.builder(
                                                itemCount: listicon.length,
                                                itemBuilder: (context, index) {
                                                  var iconz = drawer[index];
                                                  var path =
                                                      drawerpath[index];
                                                  var datex = listicon[index];
                                                  return ListTile(
                                                    leading: Icon(
                                                      datex,
                                                      color: Colors.deepPurple,
                                                    ),
                                                    title: Text(iconz),
                                                    onTap: () {
                                                     // getWeather();
                                                      showModalBottomSheet(
                                                          isScrollControlled: true,
                                                          context: context,
                                                          builder: (context) {
                                                            var mimi = 'wewe';
                                                            //  sum = 0;
                                                            //var given_list = [1, 2, 3, 4, 5];
                    
                                                            return path;//.last;
                                                          });
                                                    },
                    
                                                    //gotcha
                                                  );
                                                },
                                              ),
                                            )*/
                                            /**?Icons.receipt_long,
                        //Icons.account_balance,
                    
                        Icons.call,
                        Icons.group,
                        //Icons.question_answer,
                        //Icons.calendar_today,
                        Icons.child_care_outlined
                        Gradebook(),
                            //fees(),
                            contacts(),
                            teachers(),
                         // help(),
                            //cal,
                             calx()
                         */
                                            ListTile(
                                              leading: Icon(
                                                Icons.receipt_long,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text("My Subjects",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Gradebook(
                                                          kala1: darkmode,
                                                      rxt: kn['Subjects'],
                                                    ),
                                                  ), //MaterialPageRoute
                                                );
                                              },
                                            ),

                                            ListTile(
                                              leading: Icon(
                                                Icons.group,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text("Teachers",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        teachers(
                                                          kala1: darkmode,
                                                      rxt: kn['Subjects'],
                                                    ),
                                                  ), //MaterialPageRoute
                                                );
                                              },
                                            ),

                                            /*ListTile(
                                          leading: Icon(
                                            Icons.library_books_outlined,
                                            color: Colors.deepPurple,
                                          ),
                                          title: Text("BookStore",
                                              style: TextStyle(color: lighttext)),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => store(
                                                        username:
                                                            sky2['username'],
                                                      )), //MaterialPageRoute
                                            );
                                          },
                                        ),*/
                                            ListTile(
                                              leading: Icon(
                                                Icons.attach_money_outlined,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text("Fees",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Friendfees(
                                                              kala1: darkmode,
                                                              newc: [],
                                                              repl: '',
                                                              title:
                                                                  '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                                                              token:
                                                                  widget.token,
                                                              myname: '',
                                                              user: sky2[
                                                                  'username'],
                                                            )));
                                              },
                                            ),
                                            ListTile(
                                              leading: Icon(
                                                Icons.directions_bus,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text("Transit",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => cal(
                                                        kala1:darkmode,
                                                            username: sky2[
                                                                'username'],
                                                          )), //MaterialPageRoute
                                                );
                                              },
                                            ),
                                            Container(
                                              height: 10,
                                            ),
                                            Container(
                                              child: Center(
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    height: 0.3,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            005,
                                                    color: lighttext),
                                              ),
                                            ),
                                            ListTile(
                                              leading: Icon(
                                                Icons.child_care_outlined,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text("Policy",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          calx(kala1: darkmode,)), //MaterialPageRoute
                                                );
                                              },
                                            ),

                                            ListTile(
                                              leading: Icon(
                                                Icons.info_outline_rounded,
                                                color: Colors.deepPurple,
                                              ),
                                              title: Text(
                                                  "Terms and conditions",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        contacts(
                                                      rxt: kn['Subjects'],
                                                      kala1: darkmode,
                                                    ),
                                                  ), //MaterialPageRoute
                                                );
                                              },
                                            ),
                                            Container(height: 30),
                                            ListTile(
                                              leading: Icon(
                                                Icons.exit_to_app,
                                                color: Colors.red,
                                              ),
                                              title: Text("log out",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => MyAppL(
                                                          title:
                                                              'logout') //screen(),
                                                      ), //MaterialPageRoute
                                                );
                                                //get out of my app
                                              },
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .1,
                                            ),
                                            Text("", //"© 2022",
                                                style: TextStyle(
                                                    color:
                                                        lighttext)), //permanent

                                            InkWell(
                                              onTap: _launchUrl,
                                              child: Icon(
                                                Icons.library_books,
                                                color: Colors.deepPurple,
                                              ),
                                            ),
                                            Text("Afleet.",
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.deepPurple))
                                          ]),

                                    //Text("#rono was here"),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ))),

            //where tab goes
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.deepPurple),
              actions: [
                FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          //  sum = 0;
                          //var given_list = [1, 2, 3, 4, 5];

                          return Scaffold(
                              backgroundColor: light,
                              appBar: PreferredSize(
                                preferredSize: Size.fromHeight(70.0),
                                child: AppBar(
                                  backgroundColor: light,
                                  elevation: 0.0,
                                  iconTheme:
                                      IconThemeData(color: Colors.deepPurple),
                                ),
                              ), // here the desired height(child: AppBar()),
                              body: RefreshIndicator(
                                onRefresh: () async {
                                  offnd();
                                  //Do whatever you want on refrsh.Usually update the date of the listview
                                },
                                child: SingleChildScrollView(
                                    child: Column(children: [
                                  profpic
                                              .where((ui) =>
                                                  ui['username1'] ==
                                                  sky2['username'])
                                              .length >
                                          0
                                      ? SizedBox()
                                      : InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => chang(
                                                        username:
                                                            sky2['username'],
                                                      )
                                                  //screen(),
                                                  ), //MaterialPageRoute
                                            );
                                          },
                                          child: Container(
                                              child: Stack(children: [
                                            ...profpic.map(
                                              (ui) => ui['username1'] ==
                                                      sky2['username']
                                                  ? CircleAvatar(
                                                      radius: 70,
                                                      backgroundColor: Colors
                                                          .grey.shade50
                                                          .withOpacity(0.2),

                                                      //        backgroundImage:NetworkImage(
                                                      //ui['image'],
                                                      //),//ui['image'],
                                                    )
                                                  : SizedBox(),
                                            ),
                                            Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundColor: light,
                                                    child: InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        chang(
                                                                          username:
                                                                              sky2['username'],
                                                                        )
                                                                //screen(),
                                                                ), //MaterialPageRoute
                                                          );
                                                        },
                                                        child: Icon(Icons
                                                            .camera_alt)))),
                                          ])),
                                        ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => chang(
                                                  username: sky2['username'],
                                                )
                                            //screen(),
                                            ), //MaterialPageRoute
                                      );
                                    },
                                    child: Container(
                                        child: Stack(children: [
                                      ...profpic.map(
                                        (ui) => ui['username1'] ==
                                                sky2['username']
                                            ? CircleAvatar(
                                                radius: 70,
                                                backgroundColor:
                                                    Colors.transparent,

                                                backgroundImage: NetworkImage(
                                                  ui['image'],
                                                ), //ui['image'],
                                              )
                                            : SizedBox(),
                                      ),
                                      Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: light,
                                              child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              chang(
                                                                username: sky2[
                                                                    'username'],
                                                              )
                                                          //screen(),
                                                          ), //MaterialPageRoute
                                                    );
                                                  },
                                                  child:
                                                      Icon(Icons.camera_alt)))),
                                    ])),
                                  ),
                                  //Text(homework.toString()),
                                  ...value.map(
                                    (kn) => kn['username'] != sky2['username']
                                        ? Container()
                                        : Column(children: [
                                            SingleChildScrollView(
                                                child: Column(
                                              children: [
                                                ListTile(
                                                  title: Center(
                                                    child: Container(
                                                      //height: MediaQuery.of(context).size.height*0.3,
                                                      child: Text(
                                                          '${kn["firstname"]} ${kn["lastname"].toString()}',
                                                          style: GoogleFonts.lato(
                                                              fontSize: 28,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  lighttext)),
                                                    ),
                                                  ),
                                                  subtitle: Center(
                                                    child: Text(
                                                      "Adm: " + kn["adm_no"],
                                                      style: TextStyle(
                                                          color: lighttext),
                                                    ),
                                                  ),
                                                  //trailing: Text("Class:"+kn["Class"]),
                                                ),
                                                ListTile(
                                                    subtitle: Text(
                                                        '${kn["School"]}' +
                                                            '\n' +
                                                            "Class: " +
                                                            '${kn["Class"]}' +
                                                            '\n' +
                                                            "Subjects: " +
                                                            '${(kn["Subjects"].length)}',
                                                        style: GoogleFonts.lato(
                                                            //fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: lighttext))),
                                                //ListTile(subtitle:Text()),
                                                //ListTile(),

                                                /*Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.55,
                                                  child: ListView.builder(
                                                    itemCount: listicon.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      var myself =
                                                          sky2['username'];
                                                      var iconz = drawer[index];
                                                      print('<<<<<<${myself}>>>>>>>>');
                                                      var path =
                                                          drawerpath[index];
                                                      var datex = listicon[index];
                                                      return ListTile(
                                                        leading: Icon(
                                                          datex,
                                                          color:
                                                              Colors.deepPurple,
                                                        ),
                                                        title: Text(iconz),
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    path //screen(),
                                                                ), //MaterialPageRoute
                                                          );
                                                          //gotcha
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),*/
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.receipt_long,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Subjects",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Gradebook(
                                                              kala1: darkmode,
                                                          rxt: kn['Subjects'],
                                                        ),
                                                      ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),

                                                ListTile(
                                                  leading: Icon(
                                                    Icons.group,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Teachers",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            teachers(
                                                              kala1: darkmode,
                                                          rxt: kn['Subjects'],
                                                        ),
                                                      ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.child_care_outlined,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Policy",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              calx(
                                                                kala1: darkmode,
                                                              )), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.directions_bus,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Transit",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              cal(
                                                                kala1:darkmode,
                                                                username: sky2[
                                                                    'username'],
                                                              )), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.person_add,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "FleetCons",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              chang(
                                                                username: sky2[
                                                                    'username'],
                                                              )
                                                          //screen(),
                                                          ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                /*ListTile(
                                                  leading: Icon(
                                                    Icons.exit_to_app,
                                                    color: Colors.red,
                                                  ),
                                                  title: Text(
                                                    "log out",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    //get out of my app
                                                  },
                                                ),*/
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .1,
                                                ),
                                                Text(
                                                  "© 2022",
                                                  style: TextStyle(
                                                      color: lighttext),
                                                ), //permanent
                                                Text("Afleet.",
                                                    style: GoogleFonts.lato(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.deepPurple)),

                                                //Text("#rono was here"),
                                              ],
                                            )),
                                          ]),
                                  )
                                ])),
                              )
                              //bottomNavigationBar: ,
                              );
                        });
                  },
                  backgroundColor: light,
                  elevation: 0.0,
                  mini: true,
                  child: profpic == null
                      ? CircleAvatar(
                          radius: 16, backgroundColor: Colors.deepPurple)
                      : Container(
                          child: Stack(children: [
                          ...profpic.map(
                            (ui) => ui['username1'] == sky2['username']
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
                )
              ],
              centerTitle: true,
              backgroundColor: light,
              elevation: 0.0,
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.assets/eScholar001-removebg-preview.png'
              title: Shimmer.fromColors(
                baseColor: Colors.deepPurple,
                highlightColor: Colors.deepPurple.shade300,
                child: InkWell(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...value.map((kn) =>
                              kn['username'] != sky2['username']
                                  ? Container()
                                  : Text('${kn["School"]}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)))
                        ]),
                    onTap: () {
                      getWeather();
                    }),
              ),
              //iconTheme: IconThemeData(color: Colors.deepPurple),
            ),
            body: DefaultTabController(
              //var index;

              length: lbottom.length,
              // int index = DefaultTabController.of(context).index;
              child: Scaffold(
                  backgroundColor: light,
                  bottomNavigationBar: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 52,
                      //width: MediaQuery.of(context).size.width * 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        color: darkmode ? Colors.black12 : Colors.grey.shade200,
                      ),
                      //padding: EdgeInsets.all(50),
                      child: TabBar(
                        controller: _tabController,
                        onTap: (index) {
                          setState(() {
                            _tabController.index = index;
                          });

                          //});
                          //track this dumbfucks
                          print(index.toString());
                          /* if (index != 0) {
                            //fanya uchawi yako
                            this.topthis = 0;
                            //print(topthis);
                          }*/
                          if (index == 0) {
                            b1 = true;
                          } else {
                            b1 = false;
                          }
                          if (index == 1) {
                            b2 = true;
                          } else {
                            b2 = false;
                          }
                          if (index == 2) {
                            b3 = true;
                          } else {
                            b3 = false;
                          }
                          if (index == 3) {
                            b4 = true;
                          } else {
                            b1 = false;
                          }
                          index == 2
                              ? lean = true
                              : ''; //g h  cv   cv  cvhbb vhvvjh  j  kjknvfdbv
                        }, //vdhbv hbv hhhh vbhbhhbvd  vbvb
                        labelColor: newcor,
                        //controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: oldcor,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              //height:1.0,
                              width: 1.0,
                              color: Colors.deepPurple,
                            ),
                            insets: EdgeInsets.symmetric(horizontal: 36.0)),
                        tabs: [
                          //final
                          //labelColor: Colors.purple,
                          ...IterableZip([lbottom, lbottomtext]).map(
                            (i) => Stack(
                              children: [
                                Container(
                                  //height:50,
                                  //width: MediaQuery.of(context).size.width*8,

                                  child: Tab(
                                    //labelColor: Colors.purple,
                                    //indicatorColor: Colors.
                                    icon: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: lbottom.indexOf(i[0]) ==
                                              _tabController.index
                                          ? Colors.transparent
                                          : Colors.deepPurple,
                                      child: Icon(
                                        i[0],
                                        color: lbottom.indexOf(i[0]) ==
                                                _tabController.index
                                            ? Colors.deepPurple
                                            : Colors.white,
                                      ),
                                    ),
                                    child:
                                        null /*Text(i[1],
                                        style: TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis,
                                            //fontWeight: FontWeight.bold,
                                            color: lighttext))*/
                                    ,
                                    //text: ,
                                    //  backgroundColor: Colors.grey[50],
                                  ),
                                ),
                                i[1] != 'Info'
                                    ? Container(
                                        child: Positioned(
                                            top: -2,
                                            right: 0,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor:
                                                        Colors.transparent))),
                                      )
                                    : !nm
                                        ? Container(
                                            child: Positioned(
                                                bottom: 10,
                                                right: 5,
                                                child: CircleAvatar(
                                                    radius: 7,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    child: CircleAvatar(
                                                        radius: 5,
                                                        backgroundColor: Colors
                                                            .transparent))),
                                          )
                                        : Positioned(
                                            top: 5,
                                            right: -1,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor: light,
                                                child: CircleAvatar(
                                                  radius: 5,
                                                  backgroundColor: Colors.transparent,
                                                  child: Center(
                                                      child: null/*Text(
                                                    "${(int.parse(xrx) - int.parse(cx99)) > 10 ? '' : (int.parse(xrx) - int.parse(cx99))}",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10),
                                                  )*/),

                                                  /*Center(
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
                                                ))),
                                i[1] != 'Transit'
                                    ? Container(
                                        child: Positioned(
                                            top: -2,
                                            right: 0,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor:
                                                        Colors.transparent))),
                                      )
                                    : gechyu !=
                                            'on' //best way to correct the red error
                                        ? Container(
                                            child: Positioned(
                                                bottom: 10,
                                                right: 5,
                                                child: CircleAvatar(
                                                    radius: 7,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    child: CircleAvatar(
                                                      radius: 5,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                    ))),
                                          )
                                        : Positioned(
                                            top: 5,
                                            right: -1,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor: light,
                                                child: AvatarGlow(
                                                    glowColor: Colors.red,
                                                    endRadius: 10.0,
                                                    duration: Duration(
                                                        milliseconds: 2000),
                                                    repeat: true,
                                                    showTwoGlows: true,
                                                    repeatPauseDuration:
                                                        Duration(
                                                            milliseconds: 100),
                                                    child: CircleAvatar(
                                                      radius: 5,
                                                      backgroundColor:
                                                          Colors.red,
                                                    )))),
                              ],
                            ),
                          ),
                        ],
                        //controller: _tabController,
                      ),
                    ),
                  ),
                  body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        //controller: RxController();
                        Scaffold(
                          backgroundColor: light,
                          body: SingleChildScrollView(
                              // Center is a layout widget. It takes a single child and positions it
                              // in the middle of the parent.
                              child: Column(children: [
                            ...value.map(
                              (kn) => kn['username'] != sky2['username']
                                  ? Container()
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                          ListTile(
                                            leading: Text("What I'm doing 😃",
                                                style: GoogleFonts.lato(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: lighttext)),
                                            trailing: CircleAvatar(
                                                radius: 10,
                                                //backgroundColor: Colors.deepPurple,
                                                child: Center(
                                                    child: kn['username'] !=
                                                            sky2['username']
                                                        ? Container()
                                                        : Text(
                                                            kn["Subjects"]
                                                                .length
                                                                .toString(),
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            )))),
                                          ),
                                          SingleChildScrollView(
                                            //scrollDirection: Axis.horizontal,
                                            child: Wrap(
                                              runSpacing: 10.0,
                                              spacing: 10.0,
                                              children: [
                                                ...kn["Subjects"]
                                                    .map((i) => InkWell(
                                                        onTap: () {
                                                          showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                //  sum = 0;
                                                                //var given_list = [1, 2, 3, 4, 5];

                                                                return Scaffold(
                                                                  backgroundColor:
                                                                      light,
                                                                  appBar: AppBar(
                                                                      centerTitle:
                                                                          true,
                                                                      title: Text(
                                                                          i[
                                                                              'headline'],
                                                                          style: TextStyle(
                                                                              color:
                                                                                  lighttext)),
                                                                      elevation:
                                                                          0.0,
                                                                      backgroundColor:
                                                                          light),
                                                                  body:
                                                                      SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                    children: [
                                                                      /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */

                                                                      ListTile(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                builder: (context) => FriendMess2(
                                                                                  title: i['headline'].toString(),
                                                                                  code: i['code'].toString(),
                                                                                  token: widget.token,
                                                                                  myname: '',
                                                                                  user: sky2['username'],
                                                                                ),
                                                                              ), //MaterialPageRoute
                                                                            );
                                                                          }, //tileColor:
                                                                          tileColor: Colors
                                                                              .black12,
                                                                          leading: Icon(Icons.mail_outline,
                                                                              color: Colors
                                                                                  .deepPurple),
                                                                          title:
                                                                              Text(
                                                                            "GroupChat",
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                          subtitle:
                                                                              Text(
                                                                            "message",
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          )),
                                                                      ListTile(
                                                                        onTap:
                                                                            () {
                                                                          Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                              builder: (context) => FriendMess(
                                                                                title: i['teacher'],
                                                                                repl: '',
                                                                                newc: info3.toList(),
                                                                                token: token,
                                                                                myname: '',
                                                                                user: sky2['username'],
                                                                              ),
                                                                            ), //MaterialPageRoute
                                                                          );
                                                                        },
                                                                        leading: Icon(
                                                                            Icons
                                                                                .person_outlined,
                                                                            color:
                                                                                Colors.deepPurple),
                                                                        title:
                                                                            Text(
                                                                          "Teacher",
                                                                          style:
                                                                              TextStyle(color: lighttext),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          "Message ${i['teacher']}",
                                                                          style:
                                                                              TextStyle(color: lighttext),
                                                                        ),
                                                                      ),
                                                                      ListTile(
                                                                          leading: Icon(Icons.av_timer,
                                                                              color: Colors
                                                                                  .deepPurple),
                                                                          title:
                                                                              Text(
                                                                            "Duration",
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                          subtitle:
                                                                              Text(
                                                                            i['time_duration'],
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          )),
                                                                      ListTile(
                                                                          leading: Icon(Icons.now_widgets,
                                                                              color: Colors
                                                                                  .deepPurple),
                                                                          title:
                                                                              Text(
                                                                            "Code",
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                          subtitle:
                                                                              Text(
                                                                            i['code'],
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          )),
                                                                      ListTile(
                                                                          leading: Icon(Icons.place,
                                                                              color: Colors
                                                                                  .deepPurple),
                                                                          title:
                                                                              Text(
                                                                            "Place Taught",
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                          subtitle:
                                                                              Text(
                                                                            i['place_taught'],
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          )),
                                                                    ],
                                                                  )),
                                                                  //bottoma navigation bar
                                                                );
                                                              });
                                                          /* Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) => Chatscreen(
                                                                      titlex: i['unit_name'],
                                                                      title: i,
                                                                    ) //screen(),
                                                                ), //MaterialPageRoute
                                                          );*/
                                                        },
                                                        child: Card(
                                                            elevation: 0,
                                                            color: light,
                                                            child: Column(
                                                                children: [
                                                                  Stack(
                                                                      children: [
                                                                        CircleAvatar(
                                                                          radius:
                                                                              40,
                                                                          backgroundColor:
                                                                              colors[kn["Subjects"].indexOf(i)],
                                                                          child:
                                                                              Center(child: Text(i['headline'].toString().substring(0, 1), style: TextStyle(color: colors2[kn["Subjects"].indexOf(i)], fontWeight: FontWeight.bold, fontSize: 22))),
                                                                        ),
                                                                      ]),
                                                                  Text(
                                                                      i['headline']
                                                                          .toString(),
                                                                          overflow: TextOverflow.ellipsis,
                                                                      style: GoogleFonts.lato(
                                                                          
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          color:
                                                                              lighttext)),
                                                                ])))),
                                                /*...kn["Subjects"]
                                                    .map((i) => InkWell(
                                                          child: Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                            child: Container(
                                                              child: Material(
                                                                  elevation: 0,
                                                                  color: darkmode
                                                                      ? Colors
                                                                          .white10
                                                                      : Colors
                                                                          .grey
                                                                          .shade200,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                  ),
                                                                  child: Card(
                                                                    elevation:
                                                                        0,
                                                                    color: Colors
                                                                        .transparent,
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        ListTile(
                                                                          title: Text(
                                                                              i['headline'].toString(),
                                                                              style: TextStyle(fontWeight: FontWeight.bold, color: lighttext)),
                                                                          trailing: InkWell(
                                                                              onTap: () {
                                                                                showModalBottomSheet(
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      //  sum = 0;
                                                                                      //var given_list = [1, 2, 3, 4, 5];

                                                                                      return Scaffold(
                                                                                        backgroundColor: light,
                                                                                        appBar: AppBar(centerTitle: true, title: Text(i['headline'], style: TextStyle(color: Colors.black)), elevation: 0.0, backgroundColor: light),
                                                                                        body: SingleChildScrollView(
                                                                                            child: Column(
                                                                                          children: [
                                                                                            /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */
                                                                                            ListTile(
                                                                                                leading: Icon(
                                                                                                  Icons.calendar_today,
                                                                                                  color: Colors.deepPurple,
                                                                                                ),
                                                                                                title: Text("Day Taught"),
                                                                                                subtitle: Text(i['day_taught'])),
                                                                                            ListTile(leading: Icon(Icons.av_timer, color: Colors.deepPurple), title: Text("Time Duration"), subtitle: Text(i['time_duration'])),
                                                                                            ListTile(leading: Icon(Icons.now_widgets, color: Colors.deepPurple), title: Text("Code"), subtitle: Text(i['code'])),
                                                                                            ListTile(leading: Icon(Icons.person_outlined, color: Colors.deepPurple), title: Text("Teacher"), subtitle: Text(i['teacher'])),
                                                                                            ListTile(leading: Icon(Icons.place, color: Colors.deepPurple), title: Text("Place Taught"), subtitle: Text(i['place_taught'])),
                                                                                          ],
                                                                                        )),
                                                                                        //bottoma navigation bar
                                                                                      );
                                                                                    });
                                                                              },
                                                                              child: Icon(Icons.info_outline, color: Colors.deepPurple)),
                                                                          subtitle:
                                                                              Text(
                                                                            i['teacher'].toString(),
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        ListTile(
                                                                          //title:Text("Students"),
                                                                          subtitle:
                                                                              Row(children: [
                                                                            Stack(
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                CircleAvatar(
                                                                                  radius: 10,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  child: Center(
                                                                                      child: Icon(
                                                                                    Icons.location_pin,
                                                                                    size: 15,
                                                                                    color: Colors.deepPurple,
                                                                                  )),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              width: MediaQuery.of(context).size.width * 0.01,
                                                                            ),
                                                                            Text(i['place_taught'],
                                                                                style: TextStyle(
                                                                                  fontSize: 12,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: lighttext,
                                                                                ))
                                                                          ]),
                                                                          title:
                                                                              Row(
                                                                            children: [
                                                                              Text("code: ${i['code']}",
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  style: TextStyle(
                                                                                    color: lighttext,
                                                                                    fontSize: 13,
                                                                                  ))
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  //  sum = 0;
                                                                  //var given_list = [1, 2, 3, 4, 5];

                                                                  return Scaffold(
                                                                    backgroundColor:
                                                                        light,
                                                                    appBar: AppBar(
                                                                        centerTitle:
                                                                            true,
                                                                        title: Text(
                                                                            i[
                                                                                'headline'],
                                                                            style: TextStyle(
                                                                                color:
                                                                                    lighttext)),
                                                                        elevation:
                                                                            0.0,
                                                                        backgroundColor:
                                                                            light),
                                                                    body: SingleChildScrollView(
                                                                        child: Column(
                                                                      children: [
                                                                        /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(
                                                                              Icons.calendar_today,
                                                                              color: Colors.deepPurple,
                                                                            ),
                                                                            title:
                                                                                Text(
                                                                              "Day Taught",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle:
                                                                                Text(
                                                                              i['day_taught'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.av_timer, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Time Duration",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['time_duration'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.now_widgets, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Code",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['code'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.person_outlined, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Teacher",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['teacher'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.place, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Place Taught",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['place_taught'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                      ],
                                                                    )),
                                                                    //bottoma navigation bar
                                                                  );
                                                                });
                                                            /* Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) => Chatscreen(
                                                                      titlex: i['unit_name'],
                                                                      title: i,
                                                                    ) //screen(),
                                                                ), //MaterialPageRoute
                                                          );*/
                                                          },
                                                        ))*/
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            //height: MediaQuery.of(context).size.width * 0.58,
                                            child: Card(
                                              elevation: 0.0,
                                              color: light,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  // Text(homework.toString()),
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              left: 10,
                                                              right: 10,
                                                              bottom: 5),
                                                      child: Container(
                                                        height: 0.3,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            8,
                                                        color: darkmode
                                                            ? Colors.grey[300]
                                                            : Colors.grey[500],
                                                      ),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    leading: Icon(
                                                        Icons.menu_book,
                                                        size: 29,
                                                        color: lighttext),
                                                    subtitle: now != null
                                                        ? Text(now,
                                                            style: TextStyle(
                                                              color: lighttext,
                                                            ))
                                                        : Text("Today"),
                                                    title: Container(
                                                      //height: MediaQuery.of(context).size.height*0.3,
                                                      child: Text('Classwork',
                                                          style: GoogleFonts.lato(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  lighttext)),
                                                    ),
                                                  ),

                                                  ...value2
                                                      .map((k) => value
                                                                  .map((kn) => kn['username'] == sky2['username']
                                                                      ? kn[
                                                                          'Class']
                                                                      : '')
                                                                  .toString()
                                                                  .replaceAll(
                                                                      '(', '')
                                                                  .replaceAll(
                                                                      ')', '')
                                                                  .replaceAll(
                                                                      ',', '')
                                                                  .replaceAll(
                                                                      " ", '') ==
                                                              k['lass']
                                                                  .split(',')[0]
                                                                  .replaceAll(
                                                                      '[', '')
                                                                  .replaceAll(" ", '')
                                                          ? k['date'].toString() == now.toString()
                                                              ? ListTile(
                                                                  /*leading: Icon(
                                                      Icons.library_books,
                                                      color: Colors.deepPurple,
                                                    ),*/
                                                                  title: Text(
                                                                      value2 != null &&
                                                                              value2.length ==
                                                                                  0
                                                                          ? "No Homework!"
                                                                          : "Today's Homework",
                                                                      style: TextStyle(
                                                                          color:
                                                                              lighttext)),
                                                                  trailing: CircleAvatar(
                                                                      radius: 10,
                                                                      //backgroundColor: Colors.deepPurple,
                                                                      child: Center(
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .notifications_active,
                                                                          size:
                                                                              15,
                                                                        ),
                                                                      )), /*Chip(
                                                      elevation: 0,
                                                      backgroundColor: light,
                                                      label: now != null
                                                          ? Text(now,
                                                              style: TextStyle(
                                                                  color:
                                                                      lighttext))
                                                          : Text("Today"),
                                                    ),*/
                                                                )
                                                              : SizedBox()
                                                          : SizedBox())
                                                      .take(1),
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: value2 == null
                                                        ? Container()
                                                        : Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            //spacing: 10.0,
                                                            children: [
                                                              ...value2.map((k) => value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(
                                                                              " ",
                                                                              '') ==
                                                                          k['lass'].split(',')[0].replaceAll('[', '').replaceAll(
                                                                              " ",
                                                                              '')
                                                                      ? k['date'].toString() ==
                                                                              now.toString()
                                                                          ? InkWell(
                                                                              child: Container(
                                                                                padding: EdgeInsets.all(5.0),
                                                                                width: MediaQuery.of(context).size.width * 0.45,
                                                                                child: Material(
                                                                                    color: darkmode ? Colors.white10 : Colors.grey.shade200,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        topLeft: Radius.circular(20.0),
                                                                                        topRight: Radius.circular(20.0),
                                                                                        bottomLeft: Radius.circular(20.0),
                                                                                        bottomRight: Radius.circular(20.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Card(
                                                                                      elevation: 0.0,
                                                                                      color: Colors.transparent,
                                                                                      child: Column(
                                                                                        children: [
                                                                                          Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.deepPurple,
                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                            ),
                                                                                            height: 4,
                                                                                            width: MediaQuery.of(context).size.width * 0.30,
                                                                                          ),
                                                                                          ListTile(
                                                                                            //subtitle: Text(k['lass'].split(',')[0].replaceAll('[','').replaceAll(" ",'')),
                                                                                            title: Text(k['subject'].toString(), style: TextStyle(fontWeight: FontWeight.bold, color: lighttext)),
                                                                                          ),
                                                                                          ListTile(
                                                                                            tileColor: Colors.transparent,
                                                                                            title: Text("topic:"),
                                                                                            subtitle: Text(k['name'], style: TextStyle(color: lighttext)),
                                                                                            trailing: InkWell(
                                                                                                child: Icon(Icons.create_outlined, color: lighttext),
                                                                                                onTap: () {
                                                                                                  //throw this to a register
                                                                                                }) //CircleAvatar(radius:12,child: Checkbox(value: false, onChanged: (value){}))
                                                                                            ,
                                                                                          )
                                                                                        ],
                                                                                      ),
                                                                                    )),
                                                                              ),
                                                                              onTap: () {
                                                                                /* Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) => Chatscreen(
                                                                        titlex: i['unit_name'],
                                                                        title: i,
                                                                      ) //screen(),
                                                                  ), //MaterialPageRoute
                                                            );*/
                                                                              },
                                                                            )
                                                                          : SizedBox()
                                                                      : SizedBox()) ??
                                                                  []
                                                            ],
                                                          ),
                                                  ),
                                                  //Timeline here

                                                  SizedBox(
                                                    height: 15,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          /*Text(value.map(
                                    (kn) => kn['username'] == sky2['username']
                                        ?kn['Class']:'').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', ''),),
                                          ...kn["Subjects"].map((i) => i['day_taught']
                                                          .toString() ==
                                                      leo.toString()
                                                  ? ListTile(
                                                      title: Text("Class",
                                                          style: TextStyle(
                                                            color: lighttext,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )),
                                                    )
                                                  : SizedBox())
                                              ,*/
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            child:

                                                //Row with the assignments hii ya down
                                                //SizedBox(height: 25),

                                                Wrap(
                                              //holla
                                              spacing: 10.0,
                                              //crossAxisAlignment: WrapCrossAlignment.center,
                                              runSpacing: 5.0,
                                              // scrollDirection: Axis.horizontal, //MediaQuery.of(context).size.width;
                                              children: [
                                                ...kn["Subjects"].map(
                                                  (i) => i['day_taught']
                                                              .toString() ==
                                                          leo.toString()
                                                      ? Material(
                                                          color: darkmode
                                                              ? Colors.white10
                                                              : Colors.grey
                                                                  .shade200,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                            ),
                                                          ),
                                                          child: ListTile(
                                                            title: Text(
                                                              i['headline']
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color:
                                                                      lighttext),
                                                            ),
                                                            subtitle: Text(
                                                              i['time_taught']
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      lighttext),
                                                            ),
                                                            trailing: InkWell(
                                                              onTap: () {
                                                                showModalBottomSheet(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      //  sum = 0;
                                                                      //var given_list = [1, 2, 3, 4, 5];

                                                                      return Scaffold(
                                                                        backgroundColor:
                                                                            light,
                                                                        appBar: AppBar(
                                                                            centerTitle:
                                                                                true,
                                                                            title:
                                                                                Text(i['headline'], style: TextStyle(color: lighttext)),
                                                                            elevation: 0.0,
                                                                            backgroundColor: light),
                                                                        body: SingleChildScrollView(
                                                                            child: Column(
                                                                          children: [
                                                                            /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */
                                                                            ListTile(
                                                                                leading: Icon(
                                                                                  Icons.calendar_today,
                                                                                  color: Colors.deepPurple,
                                                                                ),
                                                                                title: Text("Day Taught", style: TextStyle(color: lighttext)),
                                                                                subtitle: Text(i['day_taught'], style: TextStyle(color: lighttext))),
                                                                            ListTile(
                                                                                leading: Icon(Icons.av_timer, color: Colors.deepPurple),
                                                                                title: Text("Time Duration", style: TextStyle(color: lighttext)),
                                                                                subtitle: Text(i['time_duration'], style: TextStyle(color: lighttext))),
                                                                            ListTile(
                                                                                leading: Icon(Icons.now_widgets, color: Colors.deepPurple),
                                                                                title: Text("Code", style: TextStyle(color: lighttext)),
                                                                                subtitle: Text(i['code'], style: TextStyle(color: lighttext))),
                                                                            ListTile(
                                                                                leading: Icon(Icons.person_outlined, color: Colors.deepPurple),
                                                                                title: Text("Teacher", style: TextStyle(color: lighttext)),
                                                                                subtitle: Text(i['teacher'], style: TextStyle(color: lighttext))),
                                                                            ListTile(
                                                                                leading: Icon(Icons.place, color: Colors.deepPurple),
                                                                                title: Text("Place Taught", style: TextStyle(color: lighttext)),
                                                                                subtitle: Text(i['place_taught'], style: TextStyle(color: lighttext))),
                                                                          ],
                                                                        )),
                                                                        //bottoma navigation bar
                                                                      );
                                                                    });
                                                              },
                                                              child: Icon(
                                                                  Icons
                                                                      .info_outline,
                                                                  color: Colors
                                                                      .deepPurple),
                                                            ),
                                                          ))
                                                      : SizedBox(),
                                                ),
                                              ],
                                            ),

                                            //Expanded(child: Text("NoticeBoard"),)
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Container(
                                                height: 0.3,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    8,
                                                color: darkmode
                                                    ? Colors.grey[300]
                                                    : Colors.grey[500],
                                              ),
                                            ),
                                          ),
                                          //Text(tess.toString()),
                                          ListTile(
                                            leading: Icon(Icons.directions_bus,
                                                size: 29, color: lighttext),
                                            title: Container(
                                              //height: MediaQuery.of(context).size.height*0.3,
                                              child: Text("Transit",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                            ),
                                          )
//Transit stuff
                                          ,
                                          ...v2prime.map(
                                            (rt) => rt['useryou'] ==
                                                        sky2['username'] &&
                                                    rt['datetime']
                                                            .split('|')[0] ==
                                                        now.toString() &&
                                                    rt['checkIn'] == 'done' &&
                                                    rt['driver'] ==
                                                        value3[hot1]["nameq"]
                                                            .toString()
                                                ? Card(
                                                    color: darkmode
                                                        ? Colors.white10
                                                        : Colors.grey.shade200,
                                                    elevation: 0.1,
                                                    child: Column(children: [
                                                      SizedBox(height: 10),
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
                                                          //radius:15,
                                                          child: Center(
                                                              child: Icon(Icons
                                                                  .home_filled)),
                                                        ),

                                                        title: Text(
                                                            'Morning PickUp'
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: darkmode
                                                                  ? Colors.grey
                                                                      .shade500
                                                                  : Colors
                                                                      .black,
                                                            )),
                                                        subtitle: Text(
                                                          'Today at ${rt['datetime'].split('|')[1]}',
                                                          style: TextStyle(
                                                            /*overflow:
                                                                    TextOverflow
                                                                        .ellipsis,*/
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: !darkmode
                                                                ? Colors
                                                                    .blueGrey
                                                                    .shade900
                                                                : Colors.white,
                                                          ),
                                                        ),
                                                        /*subtitle: Text(
                                                                                ry['title'].toString(),
                                                                                style: TextStyle(
                                                                                  fontSize: 10,
                                                                                  color: darkmode
                                              ? Colors.grey[300]
                                              : Colors.grey[500],
                                                                                ),
                                                                              ),*/
                                                      ),

                                                      Container(
                                                        height: 2,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        // color: Colors.red,
                                                      ),
                                                    ]))
                                                : SizedBox(),
                                          ),

                                          ...v2prime.map(
                                            (rt) => rt['useryou'] ==
                                                        sky2['username'] &&
                                                    rt['datetime']
                                                            .split('|')[0] ==
                                                        now.toString() &&
                                                    rt['checkout'] == 'done' &&
                                                    rt['driver'] ==
                                                        value3[hot1]["nameq"]
                                                            .toString()
                                                ? Card(
                                                    color: darkmode
                                                        ? Colors.white10
                                                        : Colors.grey.shade200,
                                                    elevation: 0.1,
                                                    child: Column(children: [
                                                      SizedBox(height: 10),
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
                                                          //radius:15,
                                                          child: Center(
                                                              child: Icon(Icons
                                                                  .school)),
                                                        ),

                                                        title: Text(
                                                            'Evening DropOff'
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: darkmode
                                                                  ? Colors.grey
                                                                      .shade500
                                                                  : Colors
                                                                      .black,
                                                            )),
                                                        subtitle: Text(
                                                          'Today at ${rt['datetime'].split('|')[1]}',
                                                          style: TextStyle(
                                                            /*overflow:
                                                                    TextOverflow
                                                                        .ellipsis,*/
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color: !darkmode
                                                                ? Colors
                                                                    .blueGrey
                                                                    .shade900
                                                                : Colors.white,
                                                          ),
                                                        ),
                                                        /*subtitle: Text(
                                                                                ry['title'].toString(),
                                                                                style: TextStyle(
                                                                                  fontSize: 10,
                                                                                  color: darkmode
                                              ? Colors.grey[300]
                                              : Colors.grey[500],
                                                                                ),
                                                                              ),*/
                                                      ),

                                                      Container(
                                                        height: 2,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        // color: Colors.red,
                                                      ),
                                                    ]))
                                                : SizedBox(),
                                          ),

                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  left: 10,
                                                  right: 10,
                                                  bottom: 5),
                                              child: Container(
                                                height: 0.3,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    8,
                                                color: darkmode
                                                    ? Colors.grey[300]
                                                    : Colors.grey[500],
                                              ),
                                            ),
                                          ),
                                          ListTile(
                                              title: Text("Today's Timeline",
                                                  style: GoogleFonts.lato(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                              trailing: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              communications2(
                                                            kala1: darkmode,
                                                            username:
                                                                sky2['username']
                                                                    .toString(),
                                                            klass:
                                                                '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                                                            school:
                                                                sky2['school'],
                                                            profpic: profpic
                                                                .toList(),
                                                            title1: value2,
                                                            tr: widget.token,
                                                          ),
                                                        ));
                                                  },
                                                  child: Text("See All",
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 17))),
                                              subtitle:
                                                  null /*now != null
                                                ? Text(now,
                                                    style: TextStyle(
                                                      color: lighttext,
                                                    ))
                                                : Text("Today"),*/
                                              ),
                                          //Text(tess.length.toString()),
                                          //Text(tess.toList().map((t){"${t[index].writer}"}).toString()),
                                          tess.length < 1
                                              ? Container(
                                                  child: Text("Nothing"),
                                                )
                                              : SizedBox(),
                                          ...info3.map((ry) => tess.length >
                                                      1 &&
                                                  ry['whoiswho'].toString() ==
                                                      'notification' &&
                                                  ry['to']
                                                          .split(',')[0]
                                                          .toString()
                                                          .replaceAll('[', '')
                                                          .replaceAll(' ', '')
                                                          .toString() ==
                                                      '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}' &&
                                                  ry['date']
                                                          .split('|')
                                                          .first
                                                          .toString() ==
                                                      now.toString()
                                              ? Card(
                                                  color: darkmode
                                                      ? Colors.white10
                                                      : Colors.grey.shade200,
                                                  elevation: 0.1,
                                                  child: Column(children: [
                                                    SizedBox(height: 10),
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
                                                        //radius:15,
                                                        child: Center(
                                                            child: Text(
                                                                ry['writer']
                                                                    .toString()
                                                                    .substring(
                                                                        0, 1))),
                                                      ),

                                                      title: Text(
                                                          ry['writer']
                                                              .toString(),
                                                          style: TextStyle(
                                                            color: darkmode
                                                                ? Colors.grey
                                                                    .shade500
                                                                : Colors.black,
                                                          )),
                                                      subtitle: Text(
                                                        ry['mation'].toString(),
                                                        style: TextStyle(
                                                          /*overflow:
                                                                  TextOverflow
                                                                      .ellipsis,*/
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: !darkmode
                                                              ? Colors.blueGrey
                                                                  .shade900
                                                              : Colors.white,
                                                        ),
                                                      ),
                                                      /*subtitle: Text(
                                      ry['title'].toString(),
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: darkmode
                                            ? Colors.grey[300]
                                            : Colors.grey[500],
                                      ),
                                    ),*/
                                                    ),

                                                    Container(
                                                      height: 2,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      // color: Colors.red,
                                                    ),
                                                  ]))
                                              : SizedBox())
                                          //.take(5)
                                          //.toList(),
                                        ]),
                            ),
                          ])),
                        ),

                        //rest of the tabs go here
                        events(
                            kala1: darkmode,

                            //change this
                            title1: value[int.parse(widget.userid) - 1]
                                ["Subjects"]), //Timetable
                        communications(
                          subs: value[int.parse(widget.userid) - 1]
                                ["Subjects"],
                          kala1: darkmode,
                          username: sky2['username'].toString(),
                          students: value.toList(),
                          klass:
                              '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                          school: sky2['school'],
                          profpic: profpic.toList(),
                          title1: value2,
                          tr: widget.token,
                        ),
                        Transit(
                            token: widget.token.toString(),
                            miuser: sky2['username'],
                            bueno: haro.length < 1 ? 1 : this.haro.last,
                            on: gechyu,
                            cordx1:
                                '-1.2', //value3 != null?'xx':value3.toString().split(',')[0].toString(),
                            cordx2:
                                '36.2' //value3.toString().split(',')[1].toString() != null?'xx':value3.toString().split(',')[1].toString(),
                            )
                      ])),
            ));

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
//After thought in school esp Riara Uni,places having qr's so that people scan and know the exact location not only location but timetable
