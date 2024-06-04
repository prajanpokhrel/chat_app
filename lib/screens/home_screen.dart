import 'package:chat_ui/list/users.dart';

import 'package:chat_ui/screens/user_list_screen.dart';
import 'package:chat_ui/screens/user_profile.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 37, 37, 37),
          elevation: 0, // Remove shadow for a flat appearance
          leading: Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/smile.jpg"),
            ),
          ),
          title: const Center(
            child: Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/plus.png",
                  width: 25,
                  color: Colors.white54,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Container(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Color.fromARGB(213, 12, 12, 12),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white54),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: UserList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    UserProfile(user: UserList[index]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 80.w),
              child: Text(
                "New",
                style: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: UserList.length,
              itemBuilder: (context, index) => UserChatList(
                users: UserList[index],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 70.w),
              child: Text(
                "Yesterday",
                style: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135),
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: UserList.length,
              itemBuilder: (context, index) => UserChatList(
                users: UserList[index],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
        // onTap: (int index) {
        //   switch (index) {
        //     case 0:
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => HomeScreen()),
        //       );
        //       break;
        //     case 1:
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => SendMoneyScreen(),
        //         ),
        //       );
        //       break;
        //     case 2:
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => Graph(),
        //         ),
        //       );
        //       break;
        //     case 3:
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) =>
        //         ),
        //       );
        //       break;
        //   }
        // },
      ),
    );
  }
}
