import 'package:flutter/material.dart';
import 'package:onboarding_lecture/component/onboarding.dart';
import 'package:onboarding_lecture/main.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];

  var imageList = [
    'image/listview/1.png',
    'image/listview/2.png',
    'image/listview/3.png',
    'image/listview/4.png',
    'image/listview/5.png',
    'image/listview/6.png',
    'image/listview/7.png',
    'image/listview/8.png',
    'image/listview/9.png',
    'image/listview/10.png',
  ];

  var description = [
    '1.There are different types of careers you can pursue in your life. Which one will it be?',
    '2.There are different types of careers you can pursue in your life. Which one will it be?',
    '3.There are different types of careers you can pursue in your life. Which one will it be?',
    '4.There are different types of careers you can pursue in your life. Which one will it be?',
    '5.There are different types of careers you can pursue in your life. Which one will it be?',
    '6.There are different types of careers you can pursue in your life. Which one will it be?',
    '7.There are different types of careers you can pursue in your life. Which one will it be?',
    '8.There are different types of careers you can pursue in your life. Which one will it be?',
    '9.There are different types of careers you can pursue in your life. Which one will it be?',
    '10.There are different types of careers you can pursue in your life. Which one will it be?',
  ];

  void showPopup(context, title, image, description) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    description,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
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
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => MyPage(),
                  ),
                );
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
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              debugPrint(titleList[index]);
              showPopup(context, titleList[index], imageList[index],
                  description[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(imageList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: width,
                          child: Text(
                            description[index],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
