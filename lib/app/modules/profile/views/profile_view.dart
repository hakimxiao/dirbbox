import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF22215B)),
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(color: Color(0xFF22215B)),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: Color(0xFF22215B)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("UI / UX Designer", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF22215B).withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text("PRO", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/plus.png"),
                      Image.asset("assets/icons/setting.png"),
                      Image.asset("assets/icons/panah-kanan-vector.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: Color(0xFF567DF4).withValues(alpha: 0.1),
                  image: Image.asset("assets/icons/folder-1.png"),
                ),
                CardFolder(
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: Color(0xFFFFDE6C).withValues(alpha: 0.3),
                  image: Image.asset("assets/icons/folder-2.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Prototypes",
                  date: "Novemaber 22.2020",
                  color: Color(0xFFF45656).withValues(alpha: 0.1),
                  image: Image.asset("assets/icons/folder-3.png"),
                ),
                CardFolder(
                  title: "Avatars",
                  date: "Novemaber 10.2020",
                  color: Color(0xFF34DEDE).withValues(alpha: 0.1),
                  image: Image.asset("assets/icons/folder-4.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Upload",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/icons/arrow-up-down.png"),
              ],
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("assets/icons/word.png", fit: BoxFit.cover),
            ),
            title: Text("Projects.docx"),
            subtitle: Text("Novemaber 22.2020"),
            trailing: Text("300kb"),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  });

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5),
          Text(date, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
