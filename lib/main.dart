
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),

    ));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.black),
           onPressed: (){
           },
         )
        ) ,

      resizeToAvoidBottomPadding: false,
      body: SafeArea(

        child: new Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10.0),

            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: <Widget>[
                    Text('Create Address',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20
                    ),),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),


                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        makeInput(label:"Name"),
                        makeInput(label: "Address lane"),
                        makeInput(label:"City"),
                        makeInput(label:"Postal Code"),
                        makeInput(label:"Phone Number")
                      ],
                    )

                ),
    SizedBox(height:50),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border(
                              bottom: BorderSide(color: Colors.grey),
                              top: BorderSide(color: Colors.white70),
                              left: BorderSide(color: Colors.white70),
                              right: BorderSide(color: Colors.white70),
                            )

                        ),

                        child: MaterialButton(

                          minWidth: double.infinity,
                          height: 50,
                          onPressed: (){} ,

                          color: Colors.blueAccent,
                          elevation: 10,

                          child: Text("Add Address",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white)),

                        )
                    )
                ), SizedBox(
                  height: 40,),


              ],
            )


        ),
      ),
    );
  }
  Widget makeInput({label,ObscureText: false}){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,style: TextStyle(
            fontSize:15,
            fontWeight: FontWeight.w500,
            color:Colors.black87

        ),
        ),
        SizedBox
          (height: 5,),
        TextField(
          obscureText: ObscureText,

          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]),
              )

          ),

        ),
        SizedBox(
          height: 5,),

      ],
    );
  }
}
