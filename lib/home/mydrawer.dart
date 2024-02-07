import 'package:faacebook_lite/pages/friends.dart';
import 'package:faacebook_lite/pages/marketplace.dart';
import 'package:faacebook_lite/pages/message.dart';
import 'package:faacebook_lite/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 100,
          child: DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  icon: const Icon(Icons.arrow_back),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                const Text(
                  'menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                Container(
                  // ignore: sort_child_properties_last
                  child: IconButton(
                      icon: const Icon(Icons.search_outlined),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        print('Search button is clicked');
                      }),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/05.jpg'),
                ),
                title: const Text(
                  'Navneet Sheoran',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('view your profile'),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profilepage(),
                    ),
                  ),
                },
              ),
              const Divider(
                thickness: 1,
                color: Colors.black,
              ),
              ListTile(
                leading: const Icon(
                  Icons.coronavirus_outlined,
                  color: Colors.red,
                ),
                title: const Text(
                  'Covid-19 Information Center',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () => print('covid icon clicked'),
              ),
              ListTile(
                leading: const Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                title: const Text(
                  'Messages',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Material(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          child: const MessagePage(),
                        ),
                      ),
                    ),
                  ),
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.group,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Group',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () => print('group icon clicked'),
              ),
              ListTile(
                  leading: const Icon(
                    Icons.shopping_bag,
                    color: Colors.blueAccent,
                  ),
                  title: const Text(
                    'Marketplace',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20.0),
                                  child: MarketplacePage(),
                                ),
                              )))),
              ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.green,
                  ),
                  title: const Text(
                    'Friends',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: const FriendsPage(),
                                ),
                              )))),
              ListTile(
                  leading: const Icon(
                    Icons.pages,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Pages',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => print('pages is clicked')),
              ListTile(
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => print('settingsis clicked')),
              ListTile(
                  leading: const Icon(
                    Icons.privacy_tip,
                    color: Colors.blueGrey,
                  ),
                  title: const Text(
                    'Privacy',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => print('privacy is clicked')),
              ListTile(
                  leading: const Icon(
                    Icons.book,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => print('about is clicked')),
              ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () => print('logout is clicked')),
            ],
          ),
        ),
      ],
    ));
  }
}
