import 'package:excryon/blocs/user_bloc.dart';
import 'package:excryon/dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double widthSize = resWidthSize(context);
    double heightSize = resHeightSize(context);
    User user = FirebaseAuth.instance.currentUser;

    TextStyle sideTextStyle = TextStyle(
        fontSize: heightSize*1.4,
        color: Color(0xFF848484),
        fontWeight: FontWeight.w600,
    );
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: [
              Expanded(child: DrawerHeader(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Stack(
                            children:[
                              Positioned(
                                child: CircleAvatar(
                                  radius: widthSize * 8.5,
                                  backgroundColor: Colors.blueGrey[200],
                                  child: CircleAvatar(
                                    radius: widthSize * 8,
                                    backgroundImage: NetworkImage(user.photoURL),
                                    backgroundColor: Colors.transparent,
                                    child:  Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        radius: widthSize*1.72,
                                        backgroundColor: Colors.transparent,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: CircleAvatar(
                                            radius: widthSize*1.2,
                                            backgroundColor: Colors.green[400],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),),
                            ]
                        ),
                        SizedBox(height: heightSize*1.4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(user.displayName,style: TextStyle(
                                fontSize: heightSize*1.4,
                                color: Color(0xFFC4D9FF),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Andika'
                            ),),
                          ],
                        ),
                      ]
                  ),

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xFF3E5070),
                        Color(0xFF3E5070)
                      ],
                      stops: [0.1,0.9]
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/balanceback.png"),
                      fit: BoxFit.fill
                  ),
                ),
              ),flex: 6,),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.info_sharp,size: widthSize*5),
                      title: Text('About Us',style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                textfontSize: widthSize*4,
                                title: "ABOUT US",
                                dtext: Text("We are a team of developers who are passionate about creating innovative mobile applications. "
                                    "Our goal is to deliver high-quality, user-friendly apps that make a difference in people's lives. "
                                    "We have grown rapidly to become a leading provider of innovative technology solutions."
                                    " \n\nWe are developers who work for your improvement. \n\n\nFor contact:  yehatechno@gmail.com",
                                  style:TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: heightSize * widthSize*0.32,
                                    fontWeight: FontWeight.w400,

                                  ),textAlign: TextAlign.center,),
                                twoOptions: false,
                                img: Image(image: AssetImage("assets/complogo.png")),
                                alertBackColor: Colors.grey[100],
                                alertForeColor: Color(0xFF5B729B),
                              );
                            }
                        );
                      },
                    ),
                  ),
                  Container(
                    height: heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.star_rate,size: widthSize*5),
                      title: Text('Rate App',style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                textfontSize: widthSize*4,
                                title: "RATE APP",
                                dtext: Text("Do you want to rate app?",style:TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: heightSize * widthSize * 0.32,
                                  fontWeight: FontWeight.w400,
                                )),
                                twoOptions: true,
                                img: Image(image: AssetImage("assets/ratelogo.png")),
                                alertBackColor: Colors.grey[100],
                                alertForeColor: Color(0xFF5B729B),
                              );
                            }
                        );
                      },
                    ),
                  ),
                  Container(
                    height: heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.play_circle_outline,size: widthSize*5),
                      title: Text('Watch Ad  +20' + String.fromCharCode(36),style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                textfontSize: widthSize*4,
                                title: "0",
                                dtext: Text("Coming Soon...",style:TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: heightSize * widthSize*0.32,
                                  fontWeight: FontWeight.w400,
                                )),
                                twoOptions: false,
                                img: Image(image: AssetImage("assets/watchlogo.png")),
                                alertBackColor: Colors.grey[100],
                                alertForeColor: Color(0xFF5B729B),
                              );
                            }
                        );
                      },
                    ),
                  ),
                  Container(
                    height: heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.currency_exchange,size: widthSize*5),
                      title: Text('Buy Cash',style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                textfontSize: widthSize*4,
                                title: "0",
                                dtext: Text("Coming Soon...",style:TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: heightSize * widthSize*0.32,
                                  fontWeight: FontWeight.w400,
                                )),
                                twoOptions: false,
                                img: Image(image: AssetImage("assets/buylogo.png")),
                                alertBackColor: Colors.grey[100],
                                alertForeColor: Color(0xFF5B729B),
                              );
                            }
                        );
                      },
                    ),
                  ),
                  Container(
                    height: heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.logout,size: widthSize*4.8),
                      title: Text('Log out',style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                  textfontSize: widthSize*4,
                                  title: "LOG OUT",
                                  dtext: Text("Do you want log out?",style:TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: heightSize * widthSize*0.32,
                                    fontWeight: FontWeight.w400,
                                  )),
                                  twoOptions: true,
                                  img: Image(image: AssetImage("assets/logout.png")),
                                  exit: false,
                                  alertBackColor: Colors.grey[100],
                                  alertForeColor: Color(0xFF5B729B)
                              );
                            }
                        );
                      },
                    ),
                  ),
                  Container(
                    height:heightSize*6.8,
                    child: ListTile(
                      leading: Icon(Icons.transit_enterexit,size: widthSize*5),
                      title: Text('Exit',style: sideTextStyle),
                      onTap: (){
                        showDialog(context: context,
                            builder: (BuildContext context){
                              return CustomDialogBox(
                                  textfontSize: widthSize*4,
                                  title: "EXIT",
                                  dtext: Text("Do you want exit?",style:TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: heightSize * widthSize*0.32,
                                    fontWeight: FontWeight.w400,
                                  )),
                                  twoOptions: true,
                                  img: Image(image: AssetImage("assets/exit.png")),
                                  exit: true,
                                  alertBackColor: Colors.grey[100],
                                  alertForeColor: Color(0xFF5B729B)
                              );
                            }
                        );
                      },
                    ),
                  ),
                ],
              ),flex: 11,),
              Expanded(child: Column(
                    children: [
                      Container(color: Colors.grey[300], height: 1,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: widthSize*6,vertical: heightSize*3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upcoming Features\n", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: heightSize*1.4,
                                color: Colors.grey[700]
                            ),),
                            Text("• Futures Trading with 1x to 20x leveraged transactions :\n",style: TextStyle(
                                fontSize: heightSize*1.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]
                            ),),
                            Text("Using leverage in a stock transaction, allows a trader to take on a greater position in a stock without having to pay the full purchase price."
                                " Leveraged investing is a technique that seeks higher investment profits by using borrowed money.",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: heightSize*1.2,
                              ),)
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: widthSize*6, vertical: heightSize*0.4),
                        child: Column(
                          children: [
                            Icon(Icons.warning_outlined,size: heightSize*2.4,color: Colors.grey,),
                            SizedBox(height: heightSize*0.6,),
                            Text("This is a simulation app where virtual currency is used for buying and selling. Real money is not involved. "
                                "All transactions, currency, and wallet are not real and do not hold any real-world value.", style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: heightSize*1.2,
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ), flex: 8),
            ],
          ),
      ),
    );
  }
  double resWidthSize(BuildContext context){
    double widthSize;
    if(MediaQuery.of(context).size.width>598)  widthSize = MediaQuery.of(context).size.width * 0.006;
    else widthSize = MediaQuery.of(context).size.width * 0.01;
    return widthSize;
  }
  double resHeightSize(BuildContext context){
    double heightSize = MediaQuery.of(context).size.height * 0.01;
    return heightSize;
  }
  Future<void> signOut() async {
    await userBloc.signOutGoogle();
  }
}