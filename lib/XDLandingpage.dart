import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class XDLandingpage extends StatelessWidget {
  XDLandingpage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff640f0f),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-128.0, -204.0),
            child: Container(
              width: 1921.0,
              height: 1921.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(469.0),
                image: DecorationImage(
                  image: const AssetImage('assets/images/1.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.46), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(169.0, 977.0),
            child:
                // Adobe XD layer: 'shadows' (group)
                SizedBox(
              width: 1218.0,
              height: 145.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 1218.0, 145.0),
                    size: Size(1218.0, 145.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'shadow2' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(71.0),
                          color: const Color(0x67000000),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(145.0, 31.0, 928.0, 86.0),
                    size: Size(1218.0, 145.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'shadow1' (shape)
                        BlendMask(
                      blendMode: BlendMode.multiply,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(43.0),
                          color: const Color(0x67000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(112.0, 142.0),
            child:
                // Adobe XD layer: 'image' (group)
                SizedBox(
              width: 1377.0,
              height: 917.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 1377.0, 917.0),
                    size: Size(1377.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 1377.0, 917.0),
                          size: Size(1377.0, 917.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 1377.0, 917.0),
                                size: Size(1377.0, 917.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          3.0, 0.0, 1374.0, 917.0),
                                      size: Size(1377.0, 917.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                -242.2, -288.3, 2052.0, 1493.6),
                                            size: Size(1374.0, 917.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child:
                                                // Adobe XD layer: '1' (shape)
                                                Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: const AssetImage(
                                                      'assets/images/5.jpg'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 1374.0, 917.0),
                                            size: Size(1374.0, 917.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffffffff),
                                                border: Border.all(
                                                    width: 1.0,
                                                    color: const Color(
                                                        0xff707070)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          0.0, 0.0, 1377.0, 917.0),
                                      size: Size(1377.0, 917.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 1377.0, 917.0),
                                            size: Size(1377.0, 917.0),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, -9.0, 693.5, 1041.0),
                                                  size: Size(1377.0, 917.0),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child:
                                                      // Adobe XD layer: '2' (shape)
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: const AssetImage(
                                                            'assets/images/4.jpg'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 1377.0, 917.0),
                                                  size: Size(1377.0, 917.0),
                                                  pinLeft: true,
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffffffff),
                                                      border: Border.all(
                                                          width: 1.0,
                                                          color: const Color(
                                                              0xff707070)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(692.0, 0.0, 682.0, 917.0),
                                size: Size(1377.0, 917.0),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          -347.0, 0.0, 1376.0, 917.0),
                                      size: Size(682.0, 917.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child:
                                          // Adobe XD layer: '3' (shape)
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage(
                                                'assets/images/3.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 682.0, 917.0),
                                      size: Size(682.0, 917.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff707070)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.0, 482.0, 1374.0, 435.0),
                    size: Size(1377.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'black-gradient' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 1.0),
                          colors: [
                            const Color(0x00000000),
                            const Color(0x2b000000),
                            const Color(0xa2000000)
                          ],
                          stops: [0.0, 0.167, 1.0],
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.0, 485.0, 519.0, 224.0),
                    size: Size(1377.0, 917.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Hello!-Welcome-back' (text)
                        Text(
                      'Hello!\nWelcome :)',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 103,
                        color: const Color(0xffffffff),
                        height: 1.058252427184466,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.0, 40.5, 47.8, 43.7),
                    size: Size(1377.0, 917.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'logo-Shape' (shape)
                        SvgPicture.string(
                      _svg_h4gtio,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.0, 17.0, 91.0, 91.0),
                    size: Size(1377.0, 917.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(469.0),
                        image: DecorationImage(
                          image: const AssetImage('assets/images/2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(1023.0, 142.0),
            child:
                // Adobe XD layer: 'Form' (group)
                SizedBox(
              width: 464.0,
              height: 917.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 464.0, 917.0),
                    size: Size(464.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter:
                            ui.ImageFilter.blur(sigmaX: 10.99, sigmaY: 10.99),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(18.0),
                              bottomRight: Radius.circular(18.0),
                            ),
                            color: const Color(0xd2ffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.4, 844.5, 388.6, 38.5),
                    size: Size(464.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'footer' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.6, 24.5, 166.0, 14.0),
                          size: Size(388.6, 38.5),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Forgot-your-password' (text)
                              Text(
                            'Copyright © 2020 EA-Tech Ltd.',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 12,
                              color: const Color(0xff939393),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(201.6, 24.5, 187.0, 14.0),
                          size: Size(388.6, 38.5),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Forgot-your-password' (text)
                              Text(
                            'Terms & Conditions | Privacy policy',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 12,
                              color: const Color(0xff939393),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 383.9, 1.0),
                          size: Size(388.6, 38.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Rectangle' (shape)
                              Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffcecece),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(148.5, 651.0, 174.0, 26.0),
                    size: Size(464.0, 917.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'By continuing, you agree to accept our \nPrivacy Policy & Terms of Service.',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xff2b2b2b),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(64.0, 353.0, 333.0, 266.0),
                    size: Size(464.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'form' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 218.0, 327.0, 48.0),
                          size: Size(333.0, 266.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Default Button' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 327.0, 48.0),
                                size: Size(327.0, 48.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: const Color(0xffef295e),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(123.0, 16.0, 82.0, 16.0),
                                size: Size(327.0, 48.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'OPEN NOW',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    letterSpacing: 0.7000000000000001,
                                    fontWeight: FontWeight.w700,
                                    height: 1.0714285714285714,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 176.0, 171.0, 24.0),
                          size: Size(333.0, 266.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Checkbox' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                                size: Size(171.0, 24.0),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.0),
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffc4c4c4)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(32.0, 5.0, 139.0, 14.0),
                                size: Size(171.0, 24.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Sign up for email updates.',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: const Color(0xff2b2b2b),
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 88.0, 327.0, 70.0),
                          size: Size(333.0, 266.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Default Input' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 22.0, 327.0, 48.0),
                                size: Size(327.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffc4c4c4)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 30.0, 14.0),
                                size: Size(327.0, 70.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: const Color(0xff2b2b2b),
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 0.0, 327.0, 70.0),
                          size: Size(333.0, 266.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child:
                              // Adobe XD layer: 'Default Input' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 22.0, 327.0, 48.0),
                                size: Size(327.0, 70.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xffc4c4c4)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 14.0),
                                size: Size(327.0, 70.0),
                                pinLeft: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  ' Name',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: const Color(0xff2b2b2b),
                                    height: 1.5,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(119.0, 105.0, 228.0, 88.0),
                    size: Size(464.0, 917.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Youtube Profit \nBlueprints',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 35,
                        color: const Color(0xff2b2b2b),
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(69.0, 239.0, 358.0, 83.0),
                    size: Size(464.0, 917.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'This helps you grow your channel\nto one which can easily generate\nmoney as a side-hustle',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 24,
                        color: const Color(0xff2b2b2b),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_h4gtio =
    '<svg viewBox="149.0 182.5 47.8 43.7" ><path transform="translate(148.9, 216.38)" d="M 44.13019943237305 7.797106742858887 C 41.70505905151367 9.657132148742676 38.64163589477539 10.27764797210693 35.72799301147461 9.492642402648926 C 33.25490188598633 8.830473899841309 31.19007873535156 7.250142097473145 29.9154167175293 5.040313720703125 L 23.93701553344727 -5.272157192230225 L 17.95880508422852 5.040313720703125 C 15.56671905517578 9.184098243713379 9.456303596496582 10.81869029998779 4.866806507110596 8.529959678649902 C 0.313034862279892 5.888558387756348 -1.250676274299622 0.02745723724365234 1.381937146186829 -4.534337997436523 L 15.63243865966797 -29.12443542480469 C 17.35796546936035 -32.11277770996094 20.45119094848633 -33.89714813232422 23.90721321105957 -33.89714813232422 L 23.90893363952637 -33.89714813232422 C 27.40258979797363 -33.89657592773438 30.51683235168457 -32.11258697509766 32.24064254760742 -29.12539291381836 L 45.92545700073242 -5.511155605316162 C 47.22991180419922 -3.461423397064209 47.86457443237305 -1.577709197998047 47.86457443237305 0.24639892578125 C 47.86457443237305 3.224995613098145 46.50413131713867 5.976821899414063 44.13019943237305 7.797106742858887 L 44.13019943237305 7.797106742858887 Z M 9.682693481445313 -9.329973220825195 L 21.58600616455078 -9.329973220825195 L 15.6607141494751 -19.55341339111328 C 15.24327850341797 -20.27652740478516 14.92499542236328 -21.04357528686523 14.71006965637207 -21.84176254272461 L 7.282773017883301 -9.023153305053711 C 8.065299034118652 -9.227382659912109 8.869792938232422 -9.329973220825195 9.682693481445313 -9.329973220825195 L 9.682693481445313 -9.329973220825195 Z M 21.32598876953125 -6.466002941131592 L 9.682693481445313 -6.466002941131592 C 7.896030902862549 -6.466002941131592 6.211387634277344 -5.764863967895508 4.938448429107666 -4.49307107925415 C 3.669139385223389 -3.222997188568115 2.969720125198364 -1.539882183074951 2.969720125198364 0.2458248138427734 C 2.969720125198364 4.02012825012207 5.68830394744873 6.088007926940918 8.016389846801758 6.710626602172852 C 8.627546310424805 6.874164581298828 9.235455513000488 6.954212188720703 9.830563545227051 6.954212188720703 C 12.14756965637207 6.954212188720703 14.25652503967285 5.747757911682129 15.48762607574463 3.613010406494141 L 21.32598876953125 -6.466002941131592 Z M 30.39800071716309 -26.07686996459961 C 29.57688522338867 -29.05031204223633 27.03864669799805 -30.96707534790039 23.9247875213623 -30.96707534790039 L 23.89823532104492 -30.96707534790039 C 20.79106140136719 -30.95618438720703 18.27001762390137 -29.03655624389648 17.47526741027832 -26.07744598388672 C 17.00949859619141 -24.3364429473877 17.24257278442383 -22.52876472473145 18.13323020935059 -20.98683547973633 L 23.93682479858398 -10.97143840789795 L 29.74041748046875 -20.98625946044922 C 30.63107490539551 -22.52799987792969 30.86491584777832 -24.33567810058594 30.39800071716309 -26.07686996459961 L 30.39800071716309 -26.07686996459961 Z M 43.4365119934082 -3.745700359344482 C 42.12879180908203 -5.449446201324463 40.20439147949219 -6.466002941131592 38.28877258300781 -6.466002941131592 L 26.54765892028809 -6.466002941131592 L 32.38679122924805 3.613010406494141 C 33.27592086791992 5.156088829040527 34.72576904296875 6.2628173828125 36.4671516418457 6.72858715057373 C 38.18522644042969 7.18939208984375 39.98106002807617 6.963767051696777 41.52241897583008 6.091257095336914 C 43.08650970458984 5.205759048461914 44.20699691772461 3.748844146728516 44.67753982543945 1.989118576049805 C 45.19738006591797 0.05076694488525391 44.74555587768555 -2.039468288421631 43.4365119934082 -3.745700359344482 L 43.4365119934082 -3.745700359344482 Z M 40.5748291015625 -9.052574157714844 L 33.1635856628418 -21.84119033813477 C 32.94865798950195 -21.04357528686523 32.63056564331055 -20.2767162322998 32.21294021606445 -19.55341339111328 L 26.2882194519043 -9.329973220825195 L 38.28858184814453 -9.331120491027832 C 39.06040954589844 -9.331120491027832 39.82631301879883 -9.237506866455078 40.5748291015625 -9.052574157714844 L 40.5748291015625 -9.052574157714844 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
