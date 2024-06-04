import 'package:chat_ui/models/users_model.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final Users user;
  const UserProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 12),
          child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(user.imgPath),
                  ),
                  Text(user.name),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
