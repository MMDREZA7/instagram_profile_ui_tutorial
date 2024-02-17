import 'package:flutter/material.dart';
import 'package:instagram_ui_tutorial/tabs/feed_view.dart';
import 'package:instagram_ui_tutorial/tabs/reels_view.dart';
import 'package:instagram_ui_tutorial/tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // tabs
  final List<Widget> tabs = [
    // feed tab
    const Tab(icon: Icon(Icons.image, color: Colors.grey)),
    // reels tab
    const Tab(icon: Icon(Icons.video_collection, color: Colors.grey)),
    // tagged tab
    const Tab(icon: Icon(Icons.bookmark, color: Colors.grey)),
  ];

  // tab bar views
  final List<Widget> tabBarViews = const [
    // feed veiw
    FeedView(),

    // reels view
    ReelsView(),

    // tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(milliseconds: 600),
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 10),
              // profile details
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // fallowing
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "356",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text("Fallowing",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600)),
                    ],
                  ),

                  // profile pic
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/images/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // followers
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "356.5M",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text("Fallowers",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // name
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ATHAN",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // bio
              Text(
                "UI Designer , Programmer , Youtuber",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),

              const SizedBox(height: 5),

              // link
              Text(
                "youtube.com/athanProgramer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[500]),
              ),

              const SizedBox(height: 20),

              // buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // edit profile
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text("Edit Profile"),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    // contact
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            "Contact",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // tab bar
              TabBar(
                tabs: tabs,
              ),

              // tab bar view
              SizedBox(
                height: 1000,
                child: TabBarView(children: tabBarViews),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
