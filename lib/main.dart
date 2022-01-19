import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Md. Abdul Kader'), accountEmail: Text('kaderhosen2002@gmail'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/abdulkadercse.png'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              trailing: Icon(Icons.email_outlined),
            ),
            ListTile(
              title: Text('Starred'),
              trailing: Icon(Icons.star_border_outlined),
            ),
            ListTile(
              title: Text('Snoozes'),
              trailing: Icon(Icons.access_time),
            ),
            ListTile(
              title: Text('Send'),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Drafts'),
              trailing: Icon(Icons.drafts),
            ),
            ListTile(
              title: Text('Chats'),
              trailing: Icon(Icons.chat),
            ),
          ],
        ),
      ),

    );
  }
}

