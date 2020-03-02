import 'package:flutter/material.dart';
import 'package:michael_vickers_app/contact_card.dart';
import 'package:michael_vickers_app/quizAFX/afwerx.dart';
import 'package:michael_vickers_app/routegenerator.dart';
import 'package:michael_vickers_app/todo/todo_main.dart';
import 'package:michael_vickers_app/todo/todo_task_screen.dart';




void main() =>
    runApp(new MaterialApp(
      home: new HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String otherProfilePic =
      'https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/11144949_958286150890143_4727697437004042895_n.jpg?_nc_cat=105&_nc_sid=110474&_nc_oc=AQk6D6O31CMoeOH6pCmN_zCTiO7grrHyoBIu9VGmnWeZZ_TCTcQARHE7mnmIj32lzoo&_nc_ht=scontent-sea1-1.xx&oh=789e259042ca10a353ee13b63451d71d&oe=5EEBC339';
  String currentProfilePic =
      'https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/10392284_958286287556796_3475270329274006331_n.jpg?_nc_cat=111&_nc_sid=110474&_nc_oc=AQlWqazWpJMel5G4kiZG2UpTxK0Tq4KgCK5rOsoRYa6M2VI3W8-W2oh0Q_WoIb7-qII&_nc_ht=scontent-sea1-1.xx&oh=c05a21cfc81e19ab14cf5c7c6b286155&oe=5EF0C51D';

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Michael Vickers'),
          backgroundColor: Colors.redAccent,
        ),



        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text('MichaelVickers@afwerx.af.mil'),
                accountName: new Text('Michael Vickers'),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(currentProfilePic),
                  ),
                  onTap: () => print('This is your current account.'),
                ),
                otherAccountsPictures: <Widget>[
                  new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(otherProfilePic),
                    ),
                    onTap: () => switchAccounts(),
                  ),
                ],
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new NetworkImage(
                            'https://secure.meetupstatic.com/photos/event/e/2/5/a/600_481197946.jpeg'),
                        fit: BoxFit.fill)),
              ),
              new ListTile(
                  title: new Text('Learn More'),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new MyQuizApp(),),
                    );
                  }),
              new Divider(),
              new ListTile(
                  title: new Text('AFWERX ToDo List'),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                     Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyToDoApp(),),);
                  }),
              new Divider(),
              new ListTile(
                  title: new Text('AFWERX Sample Contact'),
                  trailing: new Icon(Icons.arrow_upward),
                  onTap: () {
                    Navigator.of(context).pop();
                     Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyContactApp(),),);
                  }),
              new ListTile(
                  title: new Text('Industry - not connected'),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page(null)));
                  }),
              new ListTile(
                  title: new Text('For Academia- not connected'),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page(null)));
                  }),
              new ListTile(
                  title: new Text('Events- not connected'),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    // Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page(null)));
                  }),
              new Divider(),
              new ListTile(
                title: new Text('Cancel'),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        body: new Center(
          child:
          new Text('Sample MV App', style: new TextStyle(fontSize: 35.0)),
        ));
  }
}
