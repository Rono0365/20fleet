import 'package:flutter/material.dart';

class chatlist extends StatefulWidget {
  const chatlist({Key? key}) : super(key: key);

  @override
  State<chatlist> createState() => _chatlistState();
}

class _chatlistState extends State<chatlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
        FloatingActionButton(
            onPressed: () {}, mini: true, child: Icon(Icons.search))
      ]),
      body: SingleChildScrollView(child: Column(children: [
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
                          tileColor:  Colors.grey.shade100,
                          onTap: () {
                          /*  Navigator.push(
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
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.withOpacity(0.1),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //                 <--- border radius here
                                    )),
                            child: Icon(Icons.chat_bubble_outline),
                          ),
                          title: Text(
                            "Class Teacher",
                            style: TextStyle(
                              color: Colors.blueGrey.shade900
                                 // : Colors.white,
                            ),
                          ),
                          subtitle: Text("Message"),
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
                             /* Navigator.push(
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
                              );*/
                            },
                          ),
                        ),
                      ])),


      ])),
    );
  }
}
