import 'package:flutter/material.dart';
import 'package:whatsapp_app_web/src/features/helper/colors.dart';
import 'package:whatsapp_app_web/src/features/screens/web_screen/widgets/web_chat_Appbar.dart';
import 'package:whatsapp_app_web/src/features/screens/web_screen/widgets/web_profilebar.dart';
import 'package:whatsapp_app_web/src/features/screens/web_screen/widgets/web_search_bar.dart';
import 'package:whatsapp_app_web/src/features/widgets/chat_List/view/chat_list.dart';
import 'package:whatsapp_app_web/src/features/widgets/contactlist.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [WebProfileBar(), WebSearchBar(), ContactList()],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/backgroundImage.png'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              WebChatAppBar(),
              Expanded(child: ChatList()),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                    color: chatBarMessage,
                    border: Border(bottom: BorderSide(color: dividerColor))),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: 20,
                              ),
                              filled: true,
                              fillColor: searchBarColor,
                              // hintStyle: TextStyle(fontSize: 20),
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none))),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
