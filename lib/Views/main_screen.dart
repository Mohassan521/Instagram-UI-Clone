import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Text(
                'Instagram',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    fontFamily: 'MainHeading',
                    color: Colors.white),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        actions: [
          IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.heart,
                color: Colors.white,
              )),
          SizedBox(
            width: 15,
          ),
          IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Your story',
                        imgUrl:
                            'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Ema Watson',
                        imgUrl:
                            'https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Gustavo Fring',
                        imgUrl:
                            'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Lexi Kaufman',
                        imgUrl:
                            'https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Saraya Bevis',
                        imgUrl:
                            'https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  Container(
                    child: CustomCircleAvatar(
                        name: 'Thomas Shelby',
                        imgUrl:
                            'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            HomePosts(
              profile:
                  'https://images.pexels.com/photos/1080213/pexels-photo-1080213.jpeg?auto=compress&cs=tinysrgb&w=600',
              profileName: 'Thomas_shelby',
              location: 'London, England',
              postUrl:
                  'https://images.pexels.com/photos/6614759/pexels-photo-6614759.jpeg?auto=compress&cs=tinysrgb&w=600',
              caption: "Learn to behave niecly",
              likes: '21,499 likes',
              comments: 'View all 194 comments',
            ),
            SizedBox(
              height: 20,
            ),
            HomePosts(
              profile:
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAMAAAC5zwKfAAAAclBMVEW8ABb/xzb////7uzTicCjEFxreZCbZVyT9wjXmfSrogivJJRzLLB3YVCTADBjVSyLNMh40AAaBAA+rABSgABNtAA0iAAQEAAB5AA75tDPulS7qiSzfaSfbXCXtki3kdynTRSH2rDL0pjHQPCDxnC/6uDSMO5dpAAADB0lEQVRYhe1Z2baqMAxtURQZ1aMeB1Bx+P9fPCQt0IYweFffrvtFuhfdTZOdgio8z9tsf4QD7PaHSkx4v0cXagr730pw705PiKMnDi71hNgIpwEKsRU7t4JOyvvFF/814sW8iLp0VMwX8T/I+VcJCFObTkOkr/6netFJKpTWVL/U9ImJfTA+0AseVDFFvUcAip/FeIZ5vojf1ee5pSENs1j4D5seRwLxwabWEFFi0nJdXUQQ43K6Xjqr7p/jJdRgpnfnAx3iZQ502je/gzkEqG6PIKibom9wrYqRBs2SUwIMmkhUNgMM0Q+MzIXtmuNYQCRPPchkHQvELTNNP2GwmCh4MhOE4cIIEyuboGD0nqaHi1+a4VkHhqG2XrnA8D5JEJur9UQBw5cWbjeZ2MsOAPco286KsdV8Hz/aUwHLP6ksd7hzZhC4wDKhArOpew7tXAnxQuKqd94AiZDOZgDtK3ODQD/LwHA4ApplSp1VyjKDyWSDxKDvJKl9wKJK87SLW0FzOlZFFqOC6C9pMmkraBVVTjMOFq+0qPrwlieLLqkdWCi7XS3uXAvaZ+q1kxwOKtU3i1vVgrZJ8LCQ9xHBnEl1XgvmFl0wXBdXZtmEc029mbFHiyrA2uKeteDTotdMoTrQFrEfkVEtaBfAZ6zUQczd1BiRpYd7RbUZNVegpgaERstaXdoFPk7kg7BvJUhPAnyxGHmw3NjKlUqwJLQy/GpQULmGNuhLCb4IfWG6iqJkF1XLdKau2LhtqDzTV4KQ67y692ipLGgn0DyrzJIOrys4aETtVXpq6mambbvkusCG9jW11oIPPBt3tmpPeZ8mqHv8Kfpx529Z8pnoWd6E3sSa0FqQvrKu+QQxM6lgMig49Gpc8IIZH0rMp9aEzj598PQIRuOCOS8YrxDUH1qw6qsn3VONOS/Yg0YwKYoe78zHvW/ArwWzPOkpdT5DTBVUd+ciXi4+/jL5xRdfuIXjX2F3YutWcC82bgUPwnP4V0AVIPy54PC39iP8ueB5h72Tn9t/tptK7A801h1ZLubZVAAAAABJRU5ErkJggg==',
              location: 'Sponsored',
              profileName: 'MacDonalds',
              postUrl:
                  'https://blogpakistan.pk/wp-content/uploads/2023/03/McDonald-s-Ramadan-deals.jpg',
              caption:
                  "Mega 20% discount on all the deals available this Ramazan",
              likes: '102,000 likes',
              comments: 'View all 194 comments',
            ),
          ],
        ),
      ),
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
