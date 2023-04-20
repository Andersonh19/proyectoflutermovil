import 'package:flutter/material.dart';


void main() =>  runApp(MaterialApp(
home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {


  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SERVICES ANDERSON'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0.0,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel+= 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('assets/logo.jpg'),
                 radius: 40.0,
               ),
             ),
             Divider(
               height: 90.0,
               color: Colors.deepOrangeAccent,


             ),
              Text(
                'NAME',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Anderson ',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                    fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 30.0),
              Text(
                'LAST NAMES:',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Rodriguez Hernandez',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'NUMBER OF SERVICES:',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CONTACT ME:',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                 children: <Widget>[
                   Icon(
                     Icons.telegram,
                     color: Colors.deepOrangeAccent,
                   ),
                   SizedBox(width: 10.0),
                   Text(
                     '3004245688',
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 18.0,
                       letterSpacing: 1.0,

                     ),


                   )

                 ],


              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Tecnico2.it@unitecnar.edu.co',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.facebook,
                    color: Colors.deepOrangeAccent,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Anderson Rodríguez',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),

          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}
class _TestState extends State<Test> {

  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




