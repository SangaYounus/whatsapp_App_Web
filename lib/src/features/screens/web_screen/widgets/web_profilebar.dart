import 'package:flutter/material.dart';
import 'package:whatsapp_app_web/src/features/helper/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.25,
        // height: MediaQuery.of(context).size.height * 0.077,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border(right: BorderSide(color: dividerColor)),
            color: webAppBarColor),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
              // backgroundImage: AssetImage('assets/images/linkedin.jpg'),
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
