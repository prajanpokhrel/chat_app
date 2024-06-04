import 'package:chat_ui/models/users_model.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserChatList extends StatelessWidget {
  final Users users;
  const UserChatList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(
                      users: users,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(users.imgPath),
            ),
            title: Text(
              users.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              users.message,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  users.time,
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 3.h,
                  width: 5.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(213, 87, 84, 243),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      users.messageNumber,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
