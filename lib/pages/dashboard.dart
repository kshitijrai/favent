import 'package:favent/pages/navtesting.dart';
import 'package:flutter/material.dart';
import 'package:favent/src/utils/screen_size.dart';
import 'package:favent/main.dart';
import 'package:favent/widgets/dropdown_category.dart';
import 'package:favent/Theme/colors.dart';

final DFFont= 'Josefin';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade50,
      child: ListView(
        padding: EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            constraints: BoxConstraints(minHeight: 350),
            color: Colors.transparent,
            height: _media.height / 2 - 80,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Stack(
                        children: <Widget>[
                          Material(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/bg2.jpg'),
                                    fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.3,
                            child: Container(
                              color: Colors.black87,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 160,
                    width: _media.width - 30,
                    child:
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: _media.width - 40,
                            padding: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.account_circle, color: Colors.grey, size: 20,),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "User",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: DFFont,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Naman Shergill',
                                          style: Theme.of(context).textTheme.headline.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: DFFont,
                                            fontSize: 20
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.monetization_on, color: Colors.grey, size: 20,),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Favor Points",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: DFFont,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('2000',
                                            style: Theme.of(context).textTheme.headline.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.4,
                                              fontFamily: DFFont,
                                              fontSize: 20,
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: _media.longestSide <= 775
                      ? screenAwareSize(20, context)
                      : screenAwareSize(35, context),
                  left: 10,
                  right: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Hero(
                              tag: 'title1',
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Josefin"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            width: _media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                category('Favors', 'Request for items in exchange of Favor Points, or earn Favor points by lending them.'),
                Container(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 110,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            colorCard('Request Items', Icons.playlist_add, context, '/favorsreq', theme.shade50),
                            colorCard('Inventory', Icons.playlist_add_check, context, '/favorsinv' , theme.shade100),
                            colorCard('Previous Orders', Icons.playlist_play, context, '' , theme.shade200),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.arrow_drop_down, color: tBlack,),
              Text("Coming Soon", textAlign: TextAlign.center,style: TextStyle(color: tBlack, fontSize: 20, fontFamily: DFFont,),),
              Icon(Icons.arrow_drop_down, color:tBlack,),
            ],
          ),
          Divider(
            height: 10,
            color: tBlack,
          ),
          category('Services', ''),
          Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 110,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      colorCarddisabled('Browse', Icons.build, context, '' , theme.shade50),
                      colorCarddisabled('Add', Icons.add_box, context, '' , theme.shade100),
                      colorCarddisabled('Previous Orders', Icons.playlist_play, context, '' , theme.shade200)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.transparent,
            width: _media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                category('Buy/Sell Items', ''),
                Container(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 110,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            colorCarddisabled('Buy', Icons.attach_money, context, '', Colors.green),
                            colorCarddisabled('Sell', Icons.money_off, context, '', Colors.blue),
                            colorCarddisabled('Previous Orders', Icons.playlist_play, context, '', Colors.red),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: RaisedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => navtesting()
                    )
                );
              },
              child: Text('Navigation'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget colorCard(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    margin: EdgeInsets.only(left: 10, right: 10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.4),
              blurRadius: 3,
              spreadRadius: 0.2,
              offset: Offset(0, 2)),
        ]
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: (){
          Navigator.pushNamed(
            context,
            route,
          );
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: DFFont,
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget colorCarddisabled(
    String text, IconData icon, BuildContext context, String route, Color color) {
  final _media = MediaQuery.of(context).size;
  return Container(
    constraints: BoxConstraints(minWidth: 100),
    margin: EdgeInsets.only(left: 10, right: 10),
    height: 100,
    width: _media.width / 3 - 30,
    decoration: BoxDecoration(
      color: tBlack,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Material(
      borderRadius: BorderRadius.circular(15),
      color: tBlack,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: DFFont,
                ),
              ),
              Icon(
                icon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    ),
  );
}