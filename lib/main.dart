import 'package:flutter/material.dart';
import 'package:onboarding_lecture/component/listview.dart';
import 'package:onboarding_lecture/component/onboarding.dart';
import 'package:onboarding_lecture/mycard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SEMI HOME',
      home: OnBoardingPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text('SEMI HOME'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              print('Shopping cart button is clicked');
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              print('Search button is clicked');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('image/main/bbanto.jpg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('SEMI'),
              accountEmail: Text('semi@gmail.com'),
              onDetailsPressed: () {
                debugPrint('arrow is clicked!');
              },
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('image/main/flying.png'),
                  backgroundColor: Colors.white,
                ),
              ],
              decoration: BoxDecoration(
                color: Colors.orange[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                  Icons.question_mark,
                color: Colors.grey[850],
              ),
              title: Text('OnBoarding'),
              onTap: () {
                debugPrint('Home is clicked!');
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const OnBoardingPage(),
                  ),
                );
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                debugPrint('Home is clicked!');
                Navigator.pop(context);
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt,
                color: Colors.grey[850],
              ),
              title: Text('List'),
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ListViewPage(),
                  ),
                );
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: MyCard(),
    );
  }
}
