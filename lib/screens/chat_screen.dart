import 'package:chat_ui/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatScreen extends StatelessWidget {
  final Users users;
  const ChatScreen({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        leadingWidth: 80,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 20,
                ),
                SizedBox(
                  width: 1.w,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    users.imgPath,
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              users.name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 2,
            ),
            Text(users.time,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: Color.fromARGB(211, 94, 92, 221),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call,
                    color: Color.fromARGB(211, 94, 92, 221),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          hintStyle: TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: Color.fromARGB(213, 12, 12, 12),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.emoji_emotions),
                              color: Color.fromARGB(211, 94, 92, 221)),
                          suffixIcon: Row(
                            // managing size
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.attach_file_rounded),
                                  color: Color.fromARGB(211, 94, 92, 221)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt),
                                  color: Color.fromARGB(211, 94, 92, 221)),
                            ],
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send,
                        color: Color.fromARGB(211, 94, 92, 221)),
                    onPressed: () {
                      // send message functionality here
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
