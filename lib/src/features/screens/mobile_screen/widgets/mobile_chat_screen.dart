import 'package:flutter/material.dart';
import 'package:whatsapp_app_web/src/features/helper/colors.dart';
import 'package:whatsapp_app_web/src/features/widgets/chat_List/view/chat_list.dart';
import 'package:whatsapp_app_web/src/features/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(info[0]['name'].toString()),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        body: Column(children: [
          Expanded(
            child: ChatList(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, right: 5, left: 5),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      color: searchBarColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      Expanded(
                        child: Container(
                          width: 175,
                          height: 55,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                              hintText: "Type a Message",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),

                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          )),
                      SizedBox(
                        width: 20,
                      ) //  ,
                    ]),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: tabColor),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 20,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
