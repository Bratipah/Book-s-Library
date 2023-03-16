import 'package:flutter/material.dart';
import 'package:test_ui/screens/navigation/components/bottom_navigation.dart';
import 'package:test_ui/screens/profile/profile_details.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          // height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/2428085.jpg"),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.blue,
                      width: 5
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Column(
                  children: [
                    Text(
                      "John Doe",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "johndoe@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
                padding: EdgeInsets.all(20),
                height: 500,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileDetails(
                      icon: Icons.person_sharp,
                      title: "My Profile",
                    ),
                    ProfileDetails(
                      icon: Icons.settings,
                      title: "Settings",
                    ),
                    ProfileDetails(
                      icon: Icons.notifications,
                      title: "Notifications",
                    ),
                    ProfileDetails(
                      icon: Icons.message_rounded,
                      title: "Faqs",
                    ),
                    ProfileDetails(
                      icon: Icons.share_sharp,
                      title: "Share",
                    ),
                    ProfileDetails(
                      icon: Icons.logout,
                      title: "Logout",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    ),
    );
  }
}

// moveToLastScreen() {
//   Navigator.of(context).pop();
// }

