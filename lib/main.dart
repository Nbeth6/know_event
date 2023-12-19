import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page1());
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
            },
            child: Text("Log in"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
            },
            child: Text("Create an account"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EventPage()));
            },
            child: Text("Current events"),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 2"),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 3"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BoardMemberPage()));
            },
            child: Text("Board Member"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DepartementBoardMemberPage()));
            },
            child: Text("Departement Board Member"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DepartementBoardMemberPage()));
            },
            child: Text("Departement Member"),
          ),
        ],
      ),
    );
  }
}

// Code describing the attribute that a Board Member should give in order 
// to register in the app. 

class BoardMemberPage extends StatefulWidget {
  @override
  _BoardMemberPageState createState() => _BoardMemberPageState();
}

class _BoardMemberPageState extends State<BoardMemberPage> {
  String _name = "";
  String _surname = "";
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Board Member'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter your name'),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your surname'),
            onChanged: (value) {
              setState(() {
                _surname = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your email address'),
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your password'),
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Display the user's name and surname in an alert dialog
              AlertDialog alertDialog = AlertDialog(
                title: Text('Your Name and Surname'),
                content: Text('Your name is $_name and your surname is $_surname'),
              );
              showAboutDialog(context: context
              );
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

// Code describing the attribute that a Departement Board Member should give in order 
// to register in the app.

class DepartementBoardMemberPage extends StatefulWidget {
  @override
  _DepartementBoardMemberPageState createState() => _DepartementBoardMemberPageState();
}

class _DepartementBoardMemberPageState extends State<DepartementBoardMemberPage> {
  String _name = "";
  String _surname = "";
  String _email = "";
  String _password = "";
  String _Groupname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Board Member'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter your name'),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your surname'),
            onChanged: (value) {
              setState(() {
                _surname = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your email address'),
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your password'),
            onChanged: (value) {
              setState(() {
                _password = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Enter your Group name'),
            onChanged: (value) {
              setState(() {
                _Groupname = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Display the user's name and surname in an alert dialog
              AlertDialog alertDialog = AlertDialog(
                title: Text('Your Name and Surname'),
                content: Text('Your name is $_name and your surname is $_surname'),
              );
              showAboutDialog(context: context
              );
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

// The page used to display the different event (Bard code) 

class EventPage extends StatefulWidget {
  
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("George Mcallister"), 
            accountEmail: const Text("@"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval()
              ),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              
            ),
          ),
          Padding(
            padding : EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 189, 212, 60)
              ),
          ),
          
          Padding(
            padding : EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding : EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138)
            ),
          ),
          Padding(
            padding : EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138)
            ),
          ),
          Padding(
            padding : EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
            child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138)
            ),
          ),
        ],
      )
    );
  }
}

