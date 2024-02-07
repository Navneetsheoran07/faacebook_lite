import 'package:faacebook_lite/pages/friends.dart';
import 'package:faacebook_lite/pages/home.dart';
import 'package:faacebook_lite/pages/marketplace.dart';
import 'package:faacebook_lite/pages/message.dart';
import 'package:faacebook_lite/pages/notification.dart';
import 'package:faacebook_lite/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../home/mydrawer.dart';
import 'package:badges/badges.dart' as badges;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> toptabs = <Tab>[
    const Tab(icon: Icon(Icons.home_outlined)),
    const Tab(icon: Icon(Icons.people_outlined)),
    const Tab(icon: Icon(Icons.video_library_outlined)),
    const Tab(icon: Icon(Icons.shopping_bag_outlined)),
    Tab(
        icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -20, end: -5),
            badgeContent: const Text(
              '8',
              style: TextStyle(fontSize: 10, color: Colors.blue),
            ),
            child: const Icon(Icons.notifications_outlined))),
    const Tab(icon: Icon(Icons.message_outlined)),
  ];

  Future<bool> _onwillpop() async {
    print('on will pop');
    if (_tabController!.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 200), () {
      print('set index');
      _tabController?.index = 0;
    });

    print('return');
    return _tabController?.index == 0;
  }

  final _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController =
        TabController(length: toptabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  Widget build(BuildContext) {
    return WillPopScope(
      onWillPop: _onwillpop,
      child: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: const Text(
            'facebook',
            style: TextStyle(
                fontFamily: 'Klavika',
                fontSize: 34,
                color: Color.fromARGB(255, 0, 94, 255)),
          ),
          actions: [
            Container(
              // ignore: sort_child_properties_last
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  // ignore: avoid_print
                  print('search button is clicked');
                },
              ),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(41, 158, 158, 158)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              // ignore: sort_child_properties_last
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _scaffoldkey.currentState!.openEndDrawer(),
              ),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(41, 158, 158, 158)),
            )
          ],
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          bottom: TabBar(controller: _tabController, tabs: toptabs),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          child: const MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: const [
          HomePage(),
          FriendsPage(),
          WatchPage(),
          MarketplacePage(),
          NotificationPage(),
          MessagePage(),
        ]),
      ),
    );
  }
}
