import "package:flutter/material.dart";
import "dart:core";

void main() {
  runApp(MaterialApp(home: HelloWorldApp()));
}

class HelloWorldApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(
          child: Text("Hello", textAlign: TextAlign.center),
        ),
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child:  Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white
              ),
              width: 300, height: 400,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: ClipOval(
                      child: Image.asset('assets/roman.jpg',
                        width: 100, height: 100,
                        )
                      )
                  ),
                  Text("Roman Jaquez",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  )),
                  Text("Software Engineer"),
                  Text("romanejaquez@gmail.com", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent
                  )),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text("GDG Organizer, Software Engineer, Web Developer, Basketball Fan and loves Dominican Food.",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            return showDialog(context: context, builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Hello!"),
                                content: Text("This is a dialog"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Ok"),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    child: Text("Cancel"),
                                    onPressed: () {},
                                  )
                                ],
                              );
                            });
                          },
                          child: Padding(child: Icon(Icons.email, color: Colors.lightBlueAccent, size: 30), padding: EdgeInsets.all(20.0),),
                        ),
                        Padding(child: Icon(Icons.phone, color: Colors.lightBlueAccent, size: 30), padding: EdgeInsets.all(20.0),),
                        Padding(child: Icon(Icons.web, color: Colors.lightBlueAccent, size: 30), padding: EdgeInsets.all(20.0),)
                      ],
                    ),
                  )
                ],
              ),
              )
            )
          ),
        )
      ),
    );
  }
}