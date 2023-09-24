import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  int currentPageIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.lock_outline_rounded,
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Gus_Fring',
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ))
          ],
        ),
        actions: [
          SvgPicture.asset(
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            'assets/add-square-outline.svg',
          ),
          SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 40,
              // ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text('Posts',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
              // SizedBox(
              //   width: 30,
              // ),
              Column(
                children: [
                  Text(
                    '250',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text('Followers',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
              // SizedBox(
              //   width: 30,
              // ),
              Column(
                children: [
                  Text(
                    '282',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text('Following',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Gustavo Fring',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('How may I help you? ',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Text('Los Pollos Hermanos 🙂',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff262626)),
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff262626)),
                  child: Center(
                      child: Text(
                    'Share Profile',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff262626)),
                    child: Icon(
                      Icons.group_add_outlined,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_on_outlined,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_pin_sharp,
                  color: Colors.white,
                ),
              ),
            ],
            labelColor: Colors.black,
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.photo_camera_sharp,
                    size: 80,
                    color: Colors.white,
                  ),
                  Text(
                    'No Posts Yet',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Center(
                  child: Text(
                'Nothing here as well',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
