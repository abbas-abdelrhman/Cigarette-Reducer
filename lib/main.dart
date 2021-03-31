import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Welcome wih Cigarette Reducer',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.blue,
                child: Text('Forgot Password'),
              ),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Login'),
                    onPressed: () {
                      Navigator.push(ctx, PageTwo());
                    },
                  )),
              Container(
                  child: Row(
                children: <Widget>[
                  Text('Does not have account?'),
                  FlatButton(
                    textColor: Colors.blue,
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ))
            ])));
  }
}

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Challenge Phases'),
                backgroundColor: Theme.of(ctx).canvasColor,
                elevation: 1.0,
              ),
              body: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Challenge Levels',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Fighter '),
                          onPressed: () {
                            Navigator.push(ctx, PageFighter());
                          },
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Silver Fighter'),
                          onPressed: () {
                            Navigator.push(ctx, PageSFighter());
                          },
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Gold Fighter'),
                          onPressed: () {
                            Navigator.push(ctx, PageGFighter());
                          },
                        )),
                    Container(
                        height: 50,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Diamond Fighter'),
                          onPressed: () {
                            Navigator.push(ctx, PageDFighter());
                          },
                        )),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(ctx, Dashboard());
                        },
                        child: Text("Go to Dashboard"),
                      ),
                    ),
                  ])));
        });
}

class Dashboard extends MaterialPageRoute<Null> {
  Dashboard()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Back to challenge phases"),
              backgroundColor: Theme.of(ctx).accentColor,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                )
              ],
            ),
            body: Center(
              child: Text(
                'Dashboard',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          );
        });
}

class PageFighter extends MaterialPageRoute<Null> {
  PageFighter()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Back to challenge phases"),
              backgroundColor: Theme.of(ctx).accentColor,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                )
              ],
            ),
            body: Center(
              child: Text(
                'You are in Fighter Level',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          );
        });
}

class PageSFighter extends MaterialPageRoute<Null> {
  PageSFighter()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Back to challenge phases"),
              backgroundColor: Theme.of(ctx).accentColor,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                )
              ],
            ),
            body: Center(
              child: Text(
                ' You are in Silver Fighter Level',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          );
        });
}

class PageGFighter extends MaterialPageRoute<Null> {
  PageGFighter()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Back to challenge phases"),
              backgroundColor: Theme.of(ctx).accentColor,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                )
              ],
            ),
            body: Center(
              child: Text(
                ' You are in Gold Fighter Level',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          );
        });
}

class PageDFighter extends MaterialPageRoute<Null> {
  PageDFighter()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Back to challenge phases"),
              backgroundColor: Theme.of(ctx).accentColor,
              elevation: 2.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                )
              ],
            ),
            body: Center(
              child: Text(
                ' You are in Diamond Fighter Level',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
          );
        });
}
