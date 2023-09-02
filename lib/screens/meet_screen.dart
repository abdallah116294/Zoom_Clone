import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/strings_manager.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widget/home_meeting_button.dart';

class MeetAndChatScreen extends StatefulWidget {
  const MeetAndChatScreen({super.key});

  @override
  State<MeetAndChatScreen> createState() => _MeetScreenState();
}

class _MeetScreenState extends State<MeetAndChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: backgroundColor,
        title: const Text(StringsManager.label1),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.videocam,
              text: "New Meeting",
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.add_box_rounded,
              text: "Join Meeting",
            ),
            HomeMeetingButton(
              onPressed: () {},
              icon: Icons.calendar_today,
              text: "Schedual Meeting",
            ),
               HomeMeetingButton(
              onPressed: () {},
              icon: Icons.arrow_upward_rounded,
              text: "Share Screen",
            ),
          ],
        )
      ]),
    );
  }
}
