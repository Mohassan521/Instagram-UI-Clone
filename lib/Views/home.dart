import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/Views/main_screen.dart';
import 'package:instagram/Views/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  final List _pages = [
    MainScreen(),
    Container(
      child: Center(
          child: Text(
        'Search Screen',
        style: TextStyle(color: Colors.white),
      )),
    ),
    Container(
      child: Center(
          child:
              Text('Add Post Screen', style: TextStyle(color: Colors.white))),
    ),
    Container(
      child: Center(
          child: Text('Reels Screen', style: TextStyle(color: Colors.white))),
    ),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPageIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  currentPageIndex == 0
                      ? 'assets/home-bold.svg'
                      : 'assets/home-outline.svg',
                )),
            BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    currentPageIndex == 1
                        ? 'assets/search-bold.svg'
                        : 'assets/search-outline.svg')),
            BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    currentPageIndex == 2
                        ? 'assets/add-square-bold.svg'
                        : 'assets/add-square-outline.svg')),
            BottomNavigationBarItem(
                label: "",
                icon: SvgPicture.asset(
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    currentPageIndex == 3
                        ? 'assets/video-play-bold.svg'
                        : 'assets/video-play-outline.svg')),
            BottomNavigationBarItem(
                label: "",
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
                )),
          ]),
      backgroundColor: Colors.black,
      body: _pages[currentPageIndex],
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  final String name;
  final String imgUrl;
  CustomCircleAvatar({super.key, required this.name, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFFC13584), width: 3.0)),
                child: CircleAvatar(
                  maxRadius: 30.5,
                  backgroundImage: NetworkImage(imgUrl),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}

class HomePosts extends StatelessWidget {
  final String profile;
  final String profileName;
  final String postUrl;
  final String? likes;
  final String? caption;
  final String? comments;
  final String? location;

  HomePosts(
      {super.key,
      required this.profile,
      required this.profileName,
      required this.postUrl,
      this.likes,
      this.caption,
      this.comments,
      this.location});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(image: NetworkImage(profile))),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileName,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'InstagramSans'),
                  ),
                  Text(
                    location ?? '',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image(width: double.infinity, image: NetworkImage(postUrl)),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.comment,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.near_me_outlined,
                        color: Colors.white,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.turned_in_not_sharp,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                likes ?? '',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Text(
                  profileName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    caption ?? '',
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            comments ?? '',
            style: TextStyle(color: Colors.grey[800]),
          ),
        )
      ],
    );
  }
}
