import 'package:flutter/material.dart';
import 'package:task_manager/screens/profilepage.dart';
import 'package:task_manager/widgets/currentevents.dart';
import 'package:task_manager/widgets/menus.dart';
import 'package:task_manager/widgets/pendingevents.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => __DashboardScreenStateState();
}

class __DashboardScreenStateState extends State<DashboardScreen> {
  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  int activeInex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        extendBodyBehindAppBar: true,
        // bottomNavigationBar: Container
        // (
        //   decoration: BoxDecoration(
        //       borderRadius: const BorderRadius.only(
        //         topLeft: Radius.circular(30),
        //         topRight: Radius.circular(30),
        //       ),
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.grey.withOpacity(0.2),
        //           blurRadius: 10,
        //           spreadRadius: 5,
        //         ),
        //       ]),
        //   child: ClipRRect(
        //     borderRadius: const BorderRadius.only(
        //       topLeft: Radius.circular(30),
        //       topRight: Radius.circular(30),
        //     ),
        //     child: BottomNavigationBar(
        //       backgroundColor: Colors.white,
        //       selectedItemColor: Colors.blueAccent,
        //       unselectedItemColor: Colors.grey,
        //       items: const [
        //         BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.home_rounded,
        //             size: 30,
        //           ),
        //           label: 'Home',
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.person_rounded,
        //             size: 30,
        //           ),
        //           label: 'Profile',
        //         )
        //       ],
        //       onTap: (index) {
        //         setState(() {
        //           activeInex = index;
        //         });
        //       },
        //     ),
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/taskcreate');
        //   },
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10),
        //   ),
        //   child: const Icon(
        //     Icons.add,
        //     color: Colors.white,
        //     size: 30,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: _pages[activeInex]);
  }
}

AppBar _buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(top: 5),
            height: 40,
            width: 40,
            child: GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/dperson.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                ),
              ),
            )),
        const SizedBox(width: 10),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: const Text(
            'Ryan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    ),
    actions: <Widget>[
      Container(
        padding: const EdgeInsets.only(right: 20),
        child: GestureDetector(
          onTap: () {
            //impl on click logic here
          },
          child: Image.asset(
            'assets/images/notification_icon.png',
            height: 24,
            width: 24,
            fit: BoxFit.contain,
          ),
        ),
      ),
    ],
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(26, 133, 141, 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              '3 Events',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const CurrentEventList(),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              '4 pending task',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const PendingEventList(),
          Expanded(child: Menus()),
        ],
      ),
    );
  }
}
