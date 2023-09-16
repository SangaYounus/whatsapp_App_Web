import 'package:flutter/material.dart';
import 'package:whatsapp_app_web/src/features/helper/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: MediaQuery.of(context).size.width * 0.,
        // height: MediaQuery.of(context).size.height * 0.077,

        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    filled: true,
                    fillColor: searchBarColor,
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: "Search or start new chat",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none))),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.filter_list,
              color: Colors.grey,
            )
          ],
        ));
  }
}
