import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x =0;
  Random random=Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(backgroundColor: Colors.deepOrangeAccent,title: Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(child: Text( 'your winning numbr$x' )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)



              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:x==5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ Icon(Icons.icecream, color: Colors.green, size: 38,),
                    SizedBox(height: 12,),
                    Text('you won the game congratulation $x \n ',
                      textAlign: TextAlign.center,)

                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ Icon(Icons.error, color: Colors.red, size: 38,),
                    SizedBox(height: 12,),
                    Text('better luck next timme your numb is $x \n try again',
                      textAlign: TextAlign.center,)

                  ],
                ),

              ),
            )

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            x=random.nextInt(6);
              print(x);
              setState(() {


              });
          },

          child: Icon(Icons.refresh),
        ),


      ),

    );
  }
}



