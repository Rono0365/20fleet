import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'main.dart';

class Gradebook extends StatelessWidget {
  Gradebook({
    Key? key,
    required this.rxt,
    required this.kala1,
  }) : super(key: key);
  List rxt;
  bool kala1;
  //List rtx;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kala1
                                  ? Colors.black
                                  : Colors.white,
        appBar:
            AppBar(title: Text(""), centerTitle: true, leading: Container()),
        body: Center(
          child: Card(
             color: kala1
                                  ? Colors.black
                                  : Colors.white,
              child: Column(
            children: [
              AppBar(
                title: Text("Subjects"),
                centerTitle: true,
              ),
              ListTile(
                title: Text("Subject",
                    style: TextStyle(fontWeight: FontWeight.bold,color: !kala1
                                  ? Colors.black
                                  : Colors.white,)),
                // trailing: Text("Grade",
                //     style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ...rxt.map((e) => ListTile(
                    title: Text("${e['headline']}",style: TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,),),
                    //trailing: Text("${e['grade']}"),
                  ))
            ],
          )),
        ));
  }
}

class fees extends StatelessWidget {
  fees({
    Key? key,
    required this.kala1,
  }) : super(key: key);
  bool kala1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kala1
                                  ? Colors.black
                                  : Colors.white,
      appBar: AppBar(
        title: Text("School fees details"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: kala1
                                  ? Colors.black
                                  : Colors.white,
            child: Column(
          children: [
            ListTile(
              title: Text("Amount",style: TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,),),
              trailing: Text("date",style:TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,)),
            )
          ],
        )),
      ),
      bottomNavigationBar: ListTile(
        title: Text("Balance"),
        trailing: Text("Amount remaining"),
      ),
    );
  }
}

class contacts extends StatelessWidget {
  contacts({
    Key? key,
    required this.rxt,
    required this.kala1,
  }) : super(key: key);
  List rxt;
  bool kala1;
  String relax = ''' 
These terms and conditions apply to and form part of every Agreement, whether written or oral, in terms of which you interact with or receive services from Afleet defined below.

This Agreement applies if you have a policy or account with Afleet or wish to subscribe to our services.

These terms and conditions come into effect immediately when you register for or access Afleet services or the app and include our End-User License Agreement.

Any amendments or variations made to these Terms and Conditions shall take effect on their date of publication or as otherwise provided in such amendment or variation.

The clause headings in these Terms are for convenience only and shall not affect their interpretation.

INTERPRETATION
Unless a meaning is inconsistent with the context, the following terms shall, for this Agreement, have the meanings below:
“Agreement” means an accord in terms of which you interact with and/or request services from Afleet on these terms and conditions;
“Services” means all or any of the services to be provided by us for the Customer;
“Afleet” and “we,” “us” and “our” have corresponding meanings;
“Afleet Website” means the website of Afleet at the URL as we may determine from time to time;
“Party” means either you or us and “Parties” means both Afleet and you;
“Quotation” means the written quotation if any, provided to you by Afleet for the supply and/or sale of any service;
“You,” “Client,” and “Customer” means the person purchasing services and any person on whose behalf services are requested.
“Contract” means the Agreement for the provision of the Services;
“Document” includes, in addition to a document in writing, a map, plan, design, drawing, picture or other images, or any other record of any information in any form;
“illegal” means any act that breaches the criminal laws in the territory our service is offered.
“Client Data” means any Documents or other materials and any data or additional information provided by the Customer relating to the Services;
“Data” means any work, information, products, comments, statements, messages, services, or other material uploaded, handed to, or generated by Afleet;
“Server” means the computer system and server equipment operated by us (or third-party sub-contractors of Afleet) in connection with the provision of the Services;
“Charges” means the charges listed by us relating to our services from time to time;
In the event of any conflict between the provisions of services/interactions, the provisions of these standard terms and conditions shall prevail.
Supply of the Services
We shall provide the Services to the Customer subject to these Conditions. Any changes or additions to the Services or these Conditions must be agreed to in writing by Afleet and the Customer.
The Customer shall, at their own expense, supply Afleet with all necessary documents or other materials and data relating to the services within a sufficient time to enable the provision of the services per the contract. The Customer shall ensure the accuracy of all the data.
We may correct any typographical or other errors or omissions in any document relating to the provision of the services without any liability to the Customer.
The integration of third-party tracking systems to our software is not supported as Afleet has its proprietary system for transit tracking, which is reviewed and improved constantly to ensure proper functionality.
We may, without notifying the Customer, make any changes to the services necessary to comply with applicable statutory requirements or which do not materially affect the nature of the services provided.
Charges
Subject to any special terms agreed, the Customer shall pay Afleet’s standard charges and any additional sums which are agreed between Afleet and the Customer for the provision of the services or which, in Afleet’s sole discretion, are required as a result of the Customer’s instructions or lack of instructions, the inaccuracy of any client data or any other cause attributable to the Customer.
Afleet shall be entitled to vary its standard charges from time to time by giving not less than three months’ written notice to the Customer.
All charges quoted to the Customer for the provision of the services are exclusive of any value-added tax, for which the Customer shall be additionally liable at the applicable rate from time to time.
Afleet shall, where payment is not received in advance of the provision of the services, be entitled to invoice the Customer in full in respect of Afleet’s standard charges relating to the services on the date of commencement of such services or at any time after that.
Afleet’s charges and any additional sums payable shall, save where payment is made in advance, be paid by the Customer (with any applicable value-added tax and without any set-off or other deduction) within 14 days of the date of Afleet’s invoice.
If payment is not made on the due date, Afleet shall be entitled, without limiting any other rights it may have:
to charge interest on the outstanding amount (both before and after any judgment) at the rate of 4% above the base rate from time to time of the territory’s governing financial body/bank, from the due date until the outstanding amount is paid in full; and/or
to terminate and discontinue the provision of the services in respect of which payment is due but unpaid.
If this contract is terminated prior to the end of the term as a result of any failure by the Customer to comply with these terms and conditions, then the Customer shall not be entitled to any refund (except at the discretion of management) of any of the charges that are due or would become due in respect of Afleet’s provision of the services during the term which shall, if not paid in advance, be payable in full on termination
 

Intellectual Property rights
The property and any copyright or other intellectual property rights in any client data shall belong to the Customer.
The Customer warrants that any client data (which, for the avoidance of doubt, shall include any school name) and its use by Afleet to provide the services will not infringe the copyright or other rights of any third party, and the Customer shall indemnify Afleet against any loss, damages, costs, expenses or other claims arising from any such infringement.
The illegal and/or unauthorized use/piracy of Afleet software or its services, including having not obtained permission to use the software or services explicitly from Afleet, gives us the right to seek legal and file criminal charges against the user.
Warranties and liability
Afleet warrants to the Customer that the services will be provided using reasonable care and skill and, as far as reasonably possible, per the specification. Where Afleet supplies in connection with the provision of the services any goods or services of a third party, Afleet does not give any warranty, guarantee, or other term as to their quality, fitness for purpose, or otherwise, but shall, where possible, assign to the Customer the benefit of any warranty, guarantee or indemnity given by the person supplying the goods or services to Afleet.
Afleet shall have no liability to the Customer for any loss, damage, costs, expenses, or other claims for compensation arising from any client data or instructions supplied by the Customer which are incomplete, incorrect, inaccurate, illegible, out of sequence, or in the wrong form, or arising from their late arrival or non-arrival, or any other fault of the Customer.
Except in respect of death or personal injury caused by Afleet’s negligence, or as expressly provided in these terms, Afleet shall not be liable to the Customer by reason of any representation (unless fraudulent) or any implied warranty, condition, or other term, or any duty at common law, or under the express terms of the contract, for any loss of profit or any indirect, special or consequential loss, damage, costs, expenses or other claims (whether caused by the negligence of Afleet, its servants or agents or otherwise) which arise out of or in connection with the provision of the services or their use by the Customer. The entire liability of Afleet under or in connection with the contract shall not exceed the amount of Afleet’s charges paid by the Customer in respect of the services which are the subject of any such claim.
Afleet should not be liable to the Customer or be deemed to be in breach of the contract because of any delay in performing, or any failure to perform, any of Afleet’s obligations concerning the services if the delay or failure was due to any cause beyond Afleet’s reasonable control.
Afleet shall not be liable to the Customer for any loss of registration and the use or loss of client data added by the client to Afleet servers. Afleet does not check to see if the Customer’s registration or use of the system will infringe the rights of any third party. The customer warrants and represents that Afleet software is not being used for any unlawful purpose.
The Customer understands and agrees that any material downloaded or otherwise obtained through the use of the service is done at the Customer’s discretion and risk. The Customer is solely responsible for any damage to the Customer’s computer system or loss of data that results from downloading such material and/or data.
The Customer undertakes to indemnify and hold Afleet (including its officers, agents, and employees) harmless from and against all liabilities, actions, costs (including reasonable legal fees), claims, expenses, demands, damages, and penalties suffered, ordered, or incurred by Afleet in respect of any claim made or threatened by way of legal proceedings or otherwise in respect of:
The Customer’s use of Afleet software or other services provided hereunder or any liability of Afleet arising from any instructions given to Afleet by the Customer in respect of any of the services.
The use of any illegal, unlawful, discriminatory, libellous, or defamatory content on Afleet software or when using the services.
No claim shall be brought against Afleet in respect of the provision of the services unless the Customer has notified Afleet in writing of the claim within three months of it arising.
 

Customer Registration
Afleet makes no representation that any school/institution(s) the Customer wishes to register is capable of being registered by or for the Customer. The Customer should, therefore, not assume registration of the requested institution(s) until they have been notified, by Afleet, that such institution(s) have been officially registered. Any action taken by the Customer before such notification is at the Customer’s own risk.
The Customer’s registration and use of any institution is subject to the relevant governing authority’s terms and conditions. The Customer shall ensure that they are aware of those terms and conditions and that they comply with them
Afleet shall have no liability in respect of the use by the Customer of any institution. Any dispute between the Customer and any third party must be resolved between the parties concerned in such dispute. If any such dispute arises, Afleet shall be entitled, at its discretion and without giving any reason, to withhold, suspend or cancel the policy. Afleet shall also be entitled to make representations to the relevant governing authority but will not be obliged to participate in any such dispute.
Afleet shall serve the institution for the duration of the agreed-upon contract.
Afleet makes no representation and gives no warranty as to the accuracy or quality of the information received from other software users (parents, teachers, or others).
The Customer represents, undertakes, and warrants to Afleet that it will not use the service for illegal and/or immoral purposes. In particular, the Customer represents, warrants, and undertakes to Afleet that:
The Customer will not use the service in any manner which infringes the rights of any third party, nor will the Customer authorize or permit any other person to do so;
The Customer will not post, link to, or transmit:
Any material which is illegal, unlawful, threatening, or otherwise objectionable in any way or which is in the sole opinion of Afleet contrary to public decency and morality;
Any material that infringes any patent, trademark, design right, copyright, or any other intellectual property right or similar rights of any third party which may subsist under the laws of any jurisdiction.
It is the prerogative of the client representative/institution administrator to ensure that only users they authorize can access the system through the institution’s subscription. Thus, the institution is expected to compensate Afleet fully for the total number of active users on the system, as agreed in a pre-existing contract, at any point in time, regardless of any internal conflicts the institution may have with the referred user.
Any breach by the Afleet user(s) of this clause may result in the immediate termination of the user account based on the school’s discretion.
The Customer and users agree not to perform any action which will result in the reduced performance of the Afleet servers to the detriment of other users.
Termination
Subject to the earlier termination of the contract in accordance with the provisions of these conditions, the Agreement shall continue in force for the term and shall continue thereafter until either party terminates the contract by giving the other party not less than three months’ notice in writing.
Either party may (without limiting any other remedy) at any time terminate the contract, or any part of it, by giving written notice to the other if the other commits any breach of these terms and (if capable of remedy) fails to remedy the breach within 30 days after being required by written notice to do so, or if the other goes into liquidation, becomes bankrupt, makes a voluntary arrangement with its creditors or has a receiver or administrator appointed.
On termination of this Agreement or suspension, Afleet shall be entitled immediately to block or remove the client’s data from our servers. Afleet shall be entitled to delete all such data but may, at its discretion, hold such data for such period as Afleet may decide to allow the Customer to collect it at their expense, subject to payment in full of any amounts outstanding to Afleet.
 

General
Entire Understanding: These Terms and Conditions constitute the complete understanding between You and Us. All prior written or oral agreements, understandings, communications, or practices between You and Us are hereby superseded insofar as they relate to the service.
Notice: Any notice or communication required to be given hereunder may be delivered by hand or email (with confirmation of delivery) at an address communicated by either party by notice in writing.
Waiver: The failure by You or Us to exercise or enforce any right conferred by these Terms and Conditions shall not be deemed a waiver of any such right nor to operate to bar the exercise or enforcement of any such or other right on any later occasion.
Severability: In the event any provision of these Terms and Conditions is held by a court of competent jurisdiction to be invalid, void, or unenforceable, such offending provision(s) shall be stricken, and the remainder of the Terms and Conditions shall remain legal, valid and binding.
Assignment: You may not assign any rights or obligations arising under these terms and conditions without Our consent. We may assign the terms and conditions without your prior written consent, but you shall be notified of the assignment.
Partnership/Agency: No provision of this Agreement creates a partnership between us or makes you or us a commercial agent of the other for any purpose.
Governing Law and Dispute Resolution: These Terms and Conditions shall be governed by the Laws of the territory/state. You may contact Us through our customer care contacts to report any disputes, claims, or discrepancies relating to the service. Any dispute regarding the service not resolved by our customer care team shall be forwarded to Our senior officers. Suppose the dispute is not resolved within thirty days of such notification. In that case, You or We may refer the dispute to arbitration under the Rules of Arbitration of the Chartered Institute of Arbitrators in the territory of the conflict.
Afleet shall not be liable for any breach by it of this Agreement if an act of god caused the breach, insurrection or civil disorder, war or military operations, national or local emergency, acts or omissions of government, or other competent authority, Afleet’s compliance with any statutory obligation, industrial disputes of any kind (whether or not involving Afleet’s employees), fire, lightning, explosion, flood, subsidence, weather of exceptional severity, acts of omission of persons whom Afleet is not responsible, or any other cause whether similar or dissimilar outside Afleet’s reasonable control.
For questions or suggestions about our Terms and Conditions, do not hesitate to contact us at

support@afleet.africa
  ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kala1
                                  ? Colors.black
                                  : Colors.white,
        appBar: AppBar(
          title: Text("Terms of service"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Card(
                color: kala1
                                  ? Colors.black
                                  : Colors.white,
                  child: Column(
                children: [
                  ListTile(
                    title: Text(relax.toString(),style: TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,),),
                    //trailing: Text("__"),
                  ),
                ],
              )),
            ),
          ]),
        ));
  }
}

class teachers extends StatelessWidget {
  teachers({
    Key? key,
    required this.rxt,
    required this.kala1,
  }) : super(key: key);
  List rxt;
  bool kala1;

  @override
  Widget build(BuildContext context) {
    var oyaa;
    oyaa = rxt.map((d) => d['teacher'].toString());
    return Scaffold(
       backgroundColor: kala1
                                  ? Colors.black
                                  : Colors.white,
        appBar: AppBar(
          title:
              Text("Teachers", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            color: kala1
                                  ? Colors.black
                                  : Colors.white,
              child: Column(
            children: [
              // Text(oyaa.toString()),
              ListTile(
                title: Text("Teacher",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: !kala1
                                  ? Colors.black
                                  : Colors.white,)),
                trailing: Text("Subject",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:!kala1
                                  ? Colors.black
                                  : Colors.white,)),
              ),
              ...rxt.map((e) => ListTile(
                    title: Text("${e['teacher']}",style:TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,)),
                    trailing: Text("${e['headline']}",style:TextStyle(color: !kala1
                                  ? Colors.black
                                  : Colors.white,)),
                  ))
            ],
          )),
        ));
  }
}

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text("Contact us",style: TextStyle(color:                                    Colors.grey.shade900,),),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
              child: Column(
            children: [
              ListTile(
                title: Text("call"),
                trailing: Text("__"),
              ),
            ],
          )),
        ));
  }
}

class calx extends StatefulWidget {
  calx({
    Key? key,
    required this.kala1,
  }) : super(key: key);
  // alone4;
  bool kala1;
  @override
  State<calx> createState() => _calxState();
}

class _calxState extends State<calx> {
  var responsev;
  var notresponsev;
  List data = [];
  List data2 = [];
  var route;

  var sb;
  var bs;
  /* Future createAlbum() async {
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/api-token-auth/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': titleController.text,
        'password': titleController1.text,
      }),
    );
    print(response1.statusCode);
    //works => print(token['token']);
    setState(() {
      State = response1.statusCode;
    });
    var token = jsonDecode(response1.body);
    print(token);
    if (response1.statusCode == 200) {
      setState(() async {
        passtok = token['token'].toString();
        userid = token['user_id'].toString();
        
      });

      //});
//save the token for next time

    }
  }*/

  getdata() async {
    //String token = widget.token.toString();
    //print("<<<<<<<<<<<<<<<<<<<<<<<${token}");
    var headers = {
      // '//Authorization': 'Token $token',
    };
    http.Response responsev = await http.get(
      Uri.parse('https://afleet.co.ke/stages/'),
    ); //headers: headers);
    var xcv = jsonDecode(responsev.body);
    setState(() {
      this.data = xcv;
      //print(data[0]['place']);
      //this.route = ;
      //this.sb;
      //this.bs;
      //here you'll get the value of the username
      // value = data;
    });
    http.Response notresponsev = await http.get(
      Uri.parse('https://afleet.co.ke/Sbuss/'),
    ); //headers: headers);
    var xcv2 = jsonDecode(notresponsev.body);
    setState(() {
      this.data2 = xcv2;
      //print(data[0]['place']);
      //this.route = ;
      //this.sb;
      //this.bs;
      //here you'll get the value of the username
      // value = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
    //print(widget.school);
  }

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Embakasi Nyayo';
    //var new1 = widget.token;
    // List of items in our dropdown menu
    var items = [
      'Embakasi Nyayo',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    var items2 = [
      'KBS 5674',
      'KBS 5674',
      'KBS 5674',
      'KBS 5674',
      'Item 5',
    ];
    var items3 = [
      'Embakasi Nyayo',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    String bn = '''
Afleet Privacy Policy

All services provided by Afleet are intended for use as is. This page informs users regarding our policies on the collection, use, and disclosure of Personal Information from the use of our Services.

If you choose to use our service, you agree to the collection and use of information per this policy. The personal information we collect is used to provide and improve the service. We will not use or share your information with anyone except as described in this Privacy Policy and our terms of service.

When registering on our apps, as appropriate, you may be asked to enter your: name, e-mail address, mailing address or phone number.

The terms used in this Privacy Policy include and extend to our Terms and Conditions, which are accessible at Afleet unless otherwise defined in this Privacy Policy.

Information Collection and Use

For a better experience while using our service, we may require you to provide us with certain personally identifiable information, including but not limited to location. The information we request will be retained and used as described in this privacy policy.

The app does use third-party services that may collect information used to identify you.

Link to the privacy policy of third-party service providers used by the apps

Google Play Services

Whenever you use our service, in case of an error in the app, we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the app configuration when utilizing our service, the time and date of your use of the service, and other statistics.

Cookies

Cookies are files with a small amount of data commonly used as unique anonymous identifiers. These are sent to your browser from the websites you visit and are stored on your device’s internal memory.

This service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you decline our cookies, you may not be able to use some portions of this service.

Service Providers

We may employ third-party companies and individuals due to the following reasons:

To facilitate our service;

To provide the service on our behalf;

To perform Service-related services; or

To assist us in analyzing how our service is used.

We want to inform users of this service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.

How do we use your information?

Any of the information we collect from you may be used in one of the following ways:

To personalize your experience
your information helps us to better respond to your individual needs
To improve our services and products
we continually strive to improve our apps based on the information and feedback we receive from you
To improve customer service
Your information helps us to respond to your customer service requests and support needs more effectively
Your public or private information will not be sold, exchanged, transferred, or given to any other company for any reason whatsoever without your consent other than for the express purpose of delivering the service requested.

How do we protect your information?

We implement a variety of security measures, including multiple layers of encryption for client data to maintain the safety of your personal information.

We offer the use of a secure server. All supplied sensitive information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our databases only to be accessible by those authorized with special access rights, who are required to keep the information confidential.

Your private information (names, contact numbers, financials, or others) will remain encrypted during and after any interaction with Afleet services and apps.

We value your trust in providing us with your Personal Information; thus, we strive to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.

Third-party links

Afleet services may include third-party services. These third parties have separate and independent privacy policies. We, therefore, have no responsibility or liability for the content and activities of these parties. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. Nonetheless, we seek to protect the integrity of our users and their data.

Children’s Privacy

These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. If we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you know that your child has provided us with personal information, please get in touch with us immediately so we can take the necessary actions.

Do we disclose any information to outside parties?

We do not sell, trade, or otherwise transfer your personally identifiable information to outside parties. These parties do not include trusted third parties who assist us in operating our services, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also hand in your information when necessitated by law, in matters of life and death or immense danger or threat to a user’s life.

Online Privacy Policy

This online privacy policy applies only to information collected through our apps and not to information collected offline.

Terms and Conditions

Please also visit our Terms and Conditions section establishing the use, disclaimers, and limitations of liability governing our software(s) and the processing of our services.

By using our apps, you consent to our privacy policy and terms of use.

Changes to These Terms and Conditions may be made from time to time at no predetermined interval. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.

This privacy policy takes effect as of August 9th, 2022

For questions or suggestions about our privacy policy, do not hesitate to contact us at

support@afleet.africa

 

    ''';
    return Scaffold(
       backgroundColor: widget.kala1
                                  ? Colors.black
                                  : Colors.white,
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Card(
          color: widget.kala1
                                  ? Colors.black
                                  : Colors.white,
          elevation: 0,
          child: Column(children: [
            AppBar(
              title: Text("Afleet's Policy"),
              centerTitle: true,
            ),
            Card(
              color: widget.kala1
                                  ? Colors.black
                                  : Colors.white,
              elevation: 0,
              child: Column(
                children: [
                  // ListTile(title: Text('')),
                  ListTile(
                    title:
                        Center(child: Text('', style: TextStyle(fontSize: 20))),
                  ),
                  ListTile(
                      title: Text(
                    bn,style: TextStyle(color: !widget.kala1
                                  ? Colors.black
                                  : Colors.white,),
                  )),

                  ListTile(),
                  /* ListTile(
                    title: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("done",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )),
                  ),*/
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
