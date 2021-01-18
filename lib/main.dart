import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EA-Tech Limited',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: LandingPage(),
        home: HomeScreen(),
        routes:
            <String, WidgetBuilder>{
          '/youtube_blueprint': (BuildContext context) => new YT(),
          '/home': (BuildContext context) => new HomeScreen(),
          '/thank_you_page_YT': (BuildContext context) =>
              new ThankYouPageYoutubeBlueprint(),
          '/affiliate_marketing': (BuildContext context) =>
              new AffiliateMarketing(),
          '/thank_you_page_72IG': (BuildContext context) =>
              new ThankYouPage72IG(),
          '/ecommerce_blueprints': (BuildContext context) => new ECommerce(),
          '/thank_you_page_ecommerce': (BuildContext context) =>
              new ThankYouPageECommerce(),
          '/ecomm_video': (BuildContext context) => new Ecomm(),
          '/export': (BuildContext context) => new Export(),
          '/thank_you_page_export': (BuildContext context) => new Export(),
        });
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    final drawerItems = ListView(
      children: [
        UserAccountsDrawerHeader(
          onDetailsPressed: () {
            Navigator.of(context).pop();
          },
          decoration: BoxDecoration(color: Color(0xFF0D47A1)),
          accountName: Text('EA-Tech Limited'),
          accountEmail: Text('enoch_aik@icloud.com'),
          currentAccountPicture: CircleAvatar(
            child: Image.asset(
              'assets/images/8.png',
              width: 57,
              height: 57,
              fit: BoxFit.scaleDown,
            ),
            backgroundColor: Colors.white,
          ),
        ),
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: Text('Youtube Blueprints'),
          onTap: () {
            Navigator.of(context).pushNamed('/youtube_blueprint');
          },
        ),
        ListTile(
          title: Text('Affiliate Marketing'),
          onTap: () {
            Navigator.of(context).pushNamed('/affiliate_marketing');
          },
        ),
        ListTile(
          title: Text('E-Commerce'),
          onTap: () {
            Navigator.of(context).pushNamed('/ecommerce_blueprints');
          },
        ),
        ListTile(
          title: Text('Export Business'),
          onTap: () {
            Navigator.of(context).pushNamed('/export');
          },
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Logo(),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      body: Center(
        child: Container(
          width: screenWidth < 420 ? screenWidth * 0.85 : screenWidth * 0.6,
          child: Text(
            'Hello, Welcome to EA-Tech limited, The website is still under development, you can use the menu to view all our products. Thank you',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*AssetImage assetImage = AssetImage('images/8.png');
    Image image = Image(
      image: assetImage,
      width: 40,
      height: 40,
    );*/
    return Container(
        width: 40,
        height: 40,
        child: Image.asset(
          'assets/images/8.png',
        ));
  }
}

class YT extends StatefulWidget {
  @override
  _YTState createState() => _YTState();
}

class _YTState extends State<YT> {
  //Back-end
  String name = '';

  String emailAddress = '';
  String errorText = '';
  String defaultErrorText =
      'Please enter your name and email address correctly';
  var emailValidatorRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\['
      r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  var storeToDatabase = FirebaseFirestore.instance;

  void createRecord() async {
    await storeToDatabase
        .collection('Youtube Blueprints')
        .doc(emailAddress)
        .set({'email': emailAddress, 'name': name});
  }

  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6772786310';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchPrivacyAndPolicy() async {
    const url =
        'https://www.privacypolicygenerator.info/live.php?token=H7Hs2yew3LUalc9mztm3fBlulPwkNzAr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTermsAndCondition() async {
    const url =
        'https://www.termsandconditionsgenerator.com/live.php?token=1LrzbQ4gzoKphIOubiZg8mvK4VxY8xFV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    //print('Screen width is $screenWidth and Height is $screenHeight');
    return Scaffold(
      body: Material(
        color: Colors.grey,
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/8.png',
                  )),
                  SingleChildScrollView(
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SingleChildScrollView(
                            child: Container(
                              width: screenWidth < 420
                                  ? screenWidth * 0.85
                                  : screenWidth * 0.6,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'SPECIAL REPORT REVEALS',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(
                                        'This FREE video shows you the secret to grow your channel to one which can easily generate money as a side-hustle',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Center(
                                        child: Icon(
                                      FontAwesomeIcons.arrowAltCircleDown,
                                      color: Color(0xFF0D47A1),
                                      size: 30,
                                    )),
                                    Center(
                                      child: Text(
                                          'Enter your Email to get the full details:'),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              this.name = value;
                                            });
                                          },
                                          cursorColor: Colors.white,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                  color: Color(0xFF0D47A1),
                                                ),
                                              ),
                                              hintText: 'Name',
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            this.emailAddress = value;
                                          });
                                        },
                                        cursorColor: Colors.white,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color(0xFF0D47A1),
                                              ),
                                            ),
                                            hintText: 'Email address',
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Center(
                                      child: RaisedButton(
                                        child: Text(
                                          'OPEN NOW',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: Color(0xFF0D47A1),
                                        onPressed: () {
                                          if (name.isEmpty == true ||
                                              emailAddress.isEmpty == true ||
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  false) {
                                            setState(() {
                                              errorText =
                                                  'Ensure the Name and E-mail are valid';
                                            });
                                          } else if (name.isNotEmpty == true &&
                                              emailAddress.isNotEmpty == true &&
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  true) {
                                            createRecord();
                                            launchURL();
                                            Navigator.pushNamed(
                                                context, '/thank_you_page_YT');
                                          }
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        'We guarantee that your information will not be shared with/by a third-party',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        errorText,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                          'Copyright © 2020 EA-Tech Ltd. All Rights Reserved')),
                  Flexible(fit: FlexFit.loose,flex: 0,
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              launchTermsAndCondition();
                            },
                            child: Text(
                              'Terms',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              launchPrivacyAndPolicy();
                            },
                            child: Text(
                              'Policy',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ThankYouPageYoutubeBlueprint extends StatelessWidget {
  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6772786310';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'THANK YOU',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("If it doesn't redirect automatically, click "),
                  FlatButton(
                    onPressed: () {
                      launchURL();
                    },
                    child: Text('here'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//FOR 72IG
class AffiliateMarketing extends StatefulWidget {
  @override
  _AffiliateMarketingState createState() => _AffiliateMarketingState();
}

class _AffiliateMarketingState extends State<AffiliateMarketing> {
  //Back-end
  String name = '';

  String emailAddress = '';
  String errorText = '';
  String defaultErrorText =
      'Please enter your name and email address correctly';
  var emailValidatorRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\['
      r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  var storeToDatabase = FirebaseFirestore.instance;

  void createRecord() async {
    await storeToDatabase
        .collection('72IG')
        .doc(emailAddress)
        .set({'email': emailAddress, 'name': name});
  }

  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6776052488';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchPrivacyAndPolicy() async {
    const url =
        'https://www.privacypolicygenerator.info/live.php?token=H7Hs2yew3LUalc9mztm3fBlulPwkNzAr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTermsAndCondition() async {
    const url =
        'https://www.termsandconditionsgenerator.com/live.php?token=1LrzbQ4gzoKphIOubiZg8mvK4VxY8xFV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print('Screen width is $screenWidth and Height is $screenHeight');
    return Scaffold(
      body: Material(
        color: Colors.grey,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/8.png',
                  )),
                  SingleChildScrollView(
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SingleChildScrollView(
                            child: Container(
                              width: screenWidth < 420
                                  ? screenWidth * 0.85
                                  : screenWidth * 0.6,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'TOP MARKETING EXPERTS REVEALS',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(
                                        'This FREE video shows you the secret to a business that generates money using the 72IG formula (72hrs Income Generator) ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Center(
                                        child: Icon(
                                      FontAwesomeIcons.arrowAltCircleDown,
                                      color: Color(0xFF0D47A1),
                                      size: 30,
                                    )),
                                    Center(
                                      child: Text(
                                          'Enter your Email to get the full details:'),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              this.name = value;
                                            });
                                          },
                                          cursorColor: Colors.white,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                  color: Color(0xFF0D47A1),
                                                ),
                                              ),
                                              hintText: 'Name',
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            this.emailAddress = value;
                                          });
                                        },
                                        cursorColor: Colors.white,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color(0xFF0D47A1),
                                              ),
                                            ),
                                            hintText: 'Email address',
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Center(
                                      child: RaisedButton(
                                        child: Text(
                                          'OPEN NOW',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: Color(0xFF0D47A1),
                                        onPressed: () {
                                          if (name.isEmpty == true ||
                                              emailAddress.isEmpty == true ||
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  false) {
                                            setState(() {
                                              errorText =
                                                  'Ensure the Name and E-mail are valid';
                                            });
                                          } else if (name.isNotEmpty == true &&
                                              emailAddress.isNotEmpty == true &&
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  true) {
                                            createRecord();
                                            launchURL();
                                            Navigator.pushNamed(
                                                context, '/thank_you_page_72IG');
                                          }
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        'We guarantee that your information will not be shared with/by a third-party',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        errorText,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                          'Copyright © 2020 EA-Tech Ltd. All Rights Reserved')),
                  Flexible(fit: FlexFit.loose,flex: 0,
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              launchTermsAndCondition();
                            },
                            child: Text(
                              'Terms',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              launchPrivacyAndPolicy();
                            },
                            child: Text(
                              'Policy',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ThankYouPage72IG extends StatelessWidget {
  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6776052488';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'THANK YOU',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("If it doesn't redirect automatically, click "),
                  FlatButton(
                    onPressed: () {
                      launchURL();
                    },
                    child: Text('here'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ECommerce extends StatefulWidget {
  @override
  _ECommerceState createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
  //Back-end
  String name = '';

  String emailAddress = '';
  String errorText = '';
  String defaultErrorText =
      'Please enter your name and email address correctly';
  var emailValidatorRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\['
      r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  var storeToDatabase = FirebaseFirestore.instance;

  void createRecord() async {
    await storeToDatabase
        .collection('Ecommerce')
        .doc(emailAddress)
        .set({'email': emailAddress, 'name': name});
  }

  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6787092948';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchPrivacyAndPolicy() async {
    const url =
        'https://www.privacypolicygenerator.info/live.php?token=H7Hs2yew3LUalc9mztm3fBlulPwkNzAr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTermsAndCondition() async {
    const url =
        'https://www.termsandconditionsgenerator.com/live.php?token=1LrzbQ4gzoKphIOubiZg8mvK4VxY8xFV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print('Screen width is $screenWidth and Height is $screenHeight');
    return Scaffold(
      body: Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black26,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/9.png',
                  )),
                  SingleChildScrollView(
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SingleChildScrollView(
                            child: Container(
                              width: screenWidth < 420
                                  ? screenWidth * 0.85
                                  : screenWidth * 0.6,
                              child: GestureDetector(onTap: () {
                                FocusScopeNode currentFocus = FocusScope.of(context);

                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                              },
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          'LIMITED-TIME OFFER',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Center(
                                        child: Text(
                                          'A FREE video which helps you launch a very successful and profitable E-commerce business',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                          child: Icon(
                                        FontAwesomeIcons.arrowAltCircleDown,
                                        color: Color(0xFF0D47A1),
                                        size: 30,
                                      )),
                                      Center(
                                        child: Text(
                                            'Enter your Email to get the full details:'),
                                      ),
                                      SingleChildScrollView(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            onChanged: (value) {
                                              setState(() {
                                                this.name = value;
                                              });
                                            },
                                            cursorColor: Colors.white,
                                            textInputAction: TextInputAction.next,
                                            decoration: InputDecoration(
                                                focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF0D47A1),
                                                  ),
                                                ),
                                                hintText: 'Name',
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(10))),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              this.emailAddress = value;
                                            });
                                          },
                                          cursorColor: Colors.white,
                                          textInputAction: TextInputAction.done,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                  color: Color(0xFF0D47A1),
                                                ),
                                              ),
                                              hintText: 'Email address',
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                      Center(
                                        child: RaisedButton(
                                          child: Text(
                                            'OPEN NOW',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          color: Color(0xFF0D47A1),
                                          onPressed: () {
                                            if (name.isEmpty == true ||
                                                emailAddress.isEmpty == true ||
                                                emailValidatorRegex
                                                        .hasMatch(emailAddress) ==
                                                    false) {
                                              setState(() {
                                                errorText =
                                                    'Ensure the Name and E-mail are valid';
                                              });
                                            } else if (name.isNotEmpty == true &&
                                                emailAddress.isNotEmpty == true &&
                                                emailValidatorRegex
                                                        .hasMatch(emailAddress) ==
                                                    true) {
                                              createRecord();
                                              launchURL();
                                              Navigator.pushNamed(
                                                  context, '/thank_you_page_ecommerce');
                                            }
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          'We guarantee that your information will not be shared with/by a third-party',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          errorText,
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                          'Copyright © 2020 EA-Tech Ltd. All Rights Reserved')),
                  Flexible(fit: FlexFit.loose,flex: 0,
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              launchTermsAndCondition();
                            },
                            child: Text(
                              'Terms',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              launchPrivacyAndPolicy();
                            },
                            child: Text(
                              'Policy',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ThankYouPageECommerce extends StatelessWidget {
  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6787092948';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'THANK YOU',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("If it doesn't redirect automatically, click "),
                  FlatButton(
                    onPressed: () {
                      launchURL();
                    },
                    child: Text('here'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Ecomm extends StatefulWidget {
  @override
  _EcommState createState() => _EcommState();
}

class _EcommState extends State<Ecomm> {
  //Back-end
  String name = '';

  String emailAddress = '';
  String errorText = '';
  String defaultErrorText =
      'Please enter your name and email address correctly';
  var emailValidatorRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\['
      r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  var storeToDatabase = FirebaseFirestore.instance;

  void createRecord() async {
    await storeToDatabase
        .collection('Ecomm')
        .doc(emailAddress)
        .set({'email': emailAddress, 'name': name});
  }

  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6843661831';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchPrivacyAndPolicy() async {
    const url =
        'https://www.privacypolicygenerator.info/live.php?token=H7Hs2yew3LUalc9mztm3fBlulPwkNzAr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTermsAndCondition() async {
    const url =
        'https://www.termsandconditionsgenerator.com/live.php?token=1LrzbQ4gzoKphIOubiZg8mvK4VxY8xFV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print('Screen width is $screenWidth and Height is $screenHeight');
    return Scaffold(
      body: Material(
        color: Colors.grey,
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/9.png',
                  )),
                  SingleChildScrollView(
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SingleChildScrollView(
                            child: Container(
                              width: screenWidth < 420
                                  ? screenWidth * 0.85
                                  : screenWidth * 0.6,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        ' HURRY! THIS IS A LIMITED-TIME OFFER!',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(
                                        'BONUS VIDEO',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Center(
                                        child: Icon(
                                      FontAwesomeIcons.arrowAltCircleDown,
                                      color: Color(0xFF0D47A1),
                                      size: 30,
                                    )),
                                    Center(
                                      child: Text(
                                          'Enter your Email to get the full details:'),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              this.name = value;
                                            });
                                          },
                                          cursorColor: Colors.white,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                  color: Color(0xFF0D47A1),
                                                ),
                                              ),
                                              hintText: 'Name',
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            this.emailAddress = value;
                                          });
                                        },
                                        cursorColor: Colors.white,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color(0xFF0D47A1),
                                              ),
                                            ),
                                            hintText: 'Email address',
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Center(
                                      child: RaisedButton(
                                        child: Text(
                                          'OPEN NOW',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: Color(0xFF0D47A1),
                                        onPressed: () {
                                          if (name.isEmpty == true ||
                                              emailAddress.isEmpty == true ||
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  false) {
                                            setState(() {
                                              errorText =
                                                  'Ensure the Name and E-mail are valid';
                                            });
                                          } else if (name.isNotEmpty == true &&
                                              emailAddress.isNotEmpty == true &&
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  true) {
                                            createRecord();
                                            launchURL();
                                          }
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        'We guarantee that your information will not be shared with/by a third-party',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        errorText,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                          'Copyright © 2020 EA-Tech Ltd. All Rights Reserved')),
                  Flexible(fit: FlexFit.loose,flex: 0,
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              launchTermsAndCondition();
                            },
                            child: Text(
                              'Terms',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              launchPrivacyAndPolicy();
                            },
                            child: Text(
                              'Policy',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Export extends StatefulWidget {
  @override
  _ExportState createState() => _ExportState();
}

class _ExportState extends State<Export> {
  //Back-end
  String name = '';

  String emailAddress = '';
  String errorText = '';
  String defaultErrorText =
      'Please enter your name and email address correctly';
  var emailValidatorRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\['
      r'[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|'
      r'(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  var storeToDatabase = FirebaseFirestore.instance;

  void createRecord() async {
    await storeToDatabase
        .collection('Export')
        .doc(emailAddress)
        .set({'email': emailAddress, 'name': name});
  }

  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6362453693';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchPrivacyAndPolicy() async {
    const url =
        'https://www.privacypolicygenerator.info/live.php?token=H7Hs2yew3LUalc9mztm3fBlulPwkNzAr';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTermsAndCondition() async {
    const url =
        'https://www.termsandconditionsgenerator.com/live.php?token=1LrzbQ4gzoKphIOubiZg8mvK4VxY8xFV';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    print('Screen width is $screenWidth and Height is $screenHeight');
    return Scaffold(
      body: Material(
        //color: Colors.grey,
        child: Container(
          color: Colors.black12,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/8.png',
                  )),
                  SingleChildScrollView(
                    child: Card(
                      color: Colors.white,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SingleChildScrollView(
                            child: Container(
                              width: screenWidth < 420
                                  ? screenWidth * 0.85
                                  : screenWidth * 0.6,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        '7-FIGURE EXPORT BUSINESS MODEL',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Center(
                                      child: Text(
                                        'A FREE video that holds you by the hand and coaches you to start your export business and brings MAX profit in return',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Center(
                                        child: Icon(
                                      FontAwesomeIcons.arrowAltCircleDown,
                                      color: Color(0xFF0D47A1),
                                      size: 30,
                                    )),
                                    Center(
                                      child: Text(
                                          'Enter your Email to get the full details:'),
                                    ),
                                    SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            setState(() {
                                              this.name = value;
                                            });
                                          },
                                          cursorColor: Colors.white,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide(
                                                  color: Color(0xFF0D47A1),
                                                ),
                                              ),
                                              hintText: 'Name',
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        onChanged: (value) {
                                          setState(() {
                                            this.emailAddress = value;
                                          });
                                        },
                                        cursorColor: Colors.white,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Color(0xFF0D47A1),
                                              ),
                                            ),
                                            hintText: 'Email address',
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                      ),
                                    ),
                                    Center(
                                      child: RaisedButton(
                                        child: Text(
                                          'OPEN NOW',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        color: Color(0xFF0D47A1),
                                        onPressed: () {
                                          if (name.isEmpty == true ||
                                              emailAddress.isEmpty == true ||
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  false) {
                                            setState(() {
                                              errorText =
                                                  'Ensure the Name and E-mail are valid';
                                            });
                                          } else if (name.isNotEmpty == true &&
                                              emailAddress.isNotEmpty == true &&
                                              emailValidatorRegex
                                                      .hasMatch(emailAddress) ==
                                                  true) {
                                            createRecord();
                                            launchURL();
                                            Navigator.pushNamed(
                                                context, '/thank_you_page_export');
                                          }
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        'We guarantee that your information will not be shared with/by a third-party',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        errorText,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                          'Copyright © 2020 EA-Tech Ltd. All Rights Reserved')),
                  Flexible(fit: FlexFit.loose,flex: 0,
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              launchTermsAndCondition();
                            },
                            child: Text(
                              'Terms',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              launchPrivacyAndPolicy();
                            },
                            child: Text(
                              'Policy',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ThankYouPageExport extends StatelessWidget {
  launchURL() async {
    const url = 'https://expertnaire.com/manager/product/6807109436/6362453693';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'THANK YOU',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("If it doesn't redirect automatically, click "),
                  FlatButton(
                    onPressed: () {
                      launchURL();
                    },
                    child: Text('here'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
