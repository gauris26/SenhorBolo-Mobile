import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:senhor_bolo/constants.dart';
import 'package:flutter/material.dart';
import 'package:senhor_bolo/components/widgets/simpleButton.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(464),
        child: Stack(
          children: [
            Container(
              height: 464,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  boxShadow: [
                BoxShadow(
                  color: Color(0x33000000),
                  offset: Offset(0, 2.0),
                  blurRadius: 4.0,
                )
              ]),
                padding: EdgeInsets.only(left: 20 ,right: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child:Container(
                  height: 161,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Color(0xff707070),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'thespacefox@protonmail.com',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff707070)
                        ),
                      ),
                    ],
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.pin,
                            color: Color(0xff707070),
                          ),
                          SizedBox(width: 10),
                         Text(
                            '420.180.868-80',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff707070)
                            ),
                          ),
                        ],
                      ),
                      simpleButton(127, 41, 'Editar', (){}, 10, 17, Color(0xff707070))
                    ],
                  ),

                ),
              )

            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 305,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                ),
            ),
              /*child: SafeArea(
              top: true,
              */
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(builder: (context){
                        return IconButton(
                            onPressed: () {Scaffold.of(context).openDrawer();},
                            iconSize: 40,
                            color: Colors.white,
                            icon: Icon(Icons.arrow_back_ios));
                      }),

                    ],
                  ),
                    Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              width: 156,
                              height: 156,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/ricardinho_betoneira.jpeg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            Container(
                                  width: 50, height: 50,
                                  decoration: BoxDecoration(
                                    color: textMainColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.edit, size: 30, color: mainColor,)),
                                )

                          ],
                        ),
                        Text("Felipe Ribossomo", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: textMainColor
                        ),)

                      ],
                    ),
                  )
                ],

              ),
             // ),


            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Métodos de Pagamento',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: textSecondaryColor
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    color: Color(0xff818181),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      splashColor: textMainColorFade,
                      onTap: (){},
                      child: Container(
                        height: 64, width: 64,
                        child: Icon(Icons.add, color: textMainColor, size: 40,),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return Align(
                              alignment: Alignment.center,
                              child: CardCard(2103, "visa"),
                            );
                          })
                  )
                ],
              ),
            ),

            Text(
              'Endereços',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: textSecondaryColor
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    color: Color(0xff818181),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child:
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      splashColor: textMainColorFade,
                      onTap: (){},
                      child: Container(
                        height: 64, width: 64,
                        child: Icon(Icons.add, color: textMainColor, size: 40,),
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return Align(
                              alignment: Alignment.center,
                              child: CardCard(2103, "visa"),
                            );
                          })
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: size.height * 0.13,
        decoration: BoxDecoration(
            color: Color(0xffE6E6E6),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25)
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            simpleButtonIcon(177, 55, "Suporte", (){}, 25, 20, mainColor, Icon(Icons.headset), FontWeight.bold),
            simpleButtonIcon(177, 55, "Deletar", (){}, 25, 20, redButtonColor, Icon(Icons.delete), FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
Widget CardCard (int digit, String issuer){
  return
    Card(
        elevation: 5,
        color: Color(0xffE6E6E6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child:
        InkWell(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            splashColor: textMainColorFade,
            onTap: (){},
            child: SizedBox(
                height: 64, width: 123,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ if (issuer == 'visa' )...[
                    FaIcon(FontAwesomeIcons.ccVisa, color: Color(0xff0855A3), size: 35,),
                    Text("$digit", style: TextStyle(fontSize: 18, fontFamily: 'Roboto'))
                  ],
                    if (issuer == 'master')...[
                      FaIcon(FontAwesomeIcons.ccMastercard, color: Color(0xff0855A3), size: 35,),
                      Text("$digit", style: TextStyle(fontSize: 18, fontFamily: 'Roboto'))
                    ]

                  ],
                )
            )
        )
  );
}