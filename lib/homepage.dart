
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';
import 'package:loginui/signup.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: 
      Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:[
          Container(
            child: Stack(
             
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(40, 115, 0, 0),
                  child: Text("Hello",style: GoogleFonts.montserrat(fontSize:70,fontWeight: FontWeight.bold))
                ),
                 Container(
                  padding: EdgeInsets.fromLTRB(40, 180, 0, 0),
                  child: Text("There",style: GoogleFonts.montserrat(fontSize:70,fontWeight: FontWeight.bold)),
                  
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(240, 150, 0, 0),
                  child: Text(".",style: GoogleFonts.montserrat(fontSize:100,fontWeight: FontWeight.bold,color: Colors.green)))
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child:TextField(
            decoration: InputDecoration(
              labelText: "Email"
            ),
          )
          ),

          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child:TextField(
            decoration: InputDecoration(
              labelText: "Password"
            ),
          )
          ),
          SizedBox(
            height:30), 
            Container(
              padding:EdgeInsets.only(right: 15),
              alignment: Alignment.topRight,
              child: Text("Forgot Password",style:TextStyle(color:Colors.green,)),
            ),
            SizedBox(
              height: 35,
            ),
              InkWell(
              onTap: () {
                print("hello") ; 
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                alignment: Alignment.center,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green
                ),
                child:Text("Login",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(
              height: 15
              ,
            ),
           
           
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                alignment: Alignment.center,
                
                decoration:BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2
                  ),
                  
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent
                ),
                child:Text("Login with facebook",style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(
              height: 45,
            ),

            Container(
              alignment: Alignment.center,

              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New to Spotify?"),
                  InkWell(
                    onTap: (){

                     Navigator.push(context, new MaterialPageRoute(builder: (context) => new signup())
 );
                      print("redirect") ;                    },
                    child: Text("  Sign Up",style: TextStyle(color: Colors.green),)),
                ],
              )

            )
          
        ]
      ),
      
      
    );
  }
}
