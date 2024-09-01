// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage(
                      "assets/logo/drawer.avif")
                        )
                        ),
          ),
          const ListTile(
            title: Text(
              "Reset Progress",
              style: TextStyle(fontSize: 19),
            ),
            leading: Icon(
              Icons.restart_alt_sharp,
              size: 28,
            ),
          ),
          ListTile(
            title: Text(
              "Share with Friends",
              style: TextStyle(fontSize: 19),
            ),
            leading: Icon(
              Icons.share,
              size: 28,
            ),
          ),
          ListTile(
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 19),
            ),
            leading: Icon(
              Icons.star,
              size: 28,
            ),
          ),
          ListTile(
            title: Text(
              "FeedBack",
              style: TextStyle(fontSize: 19),
            ),
            leading: Icon(
              Icons.comment,
              size: 28,
            ),
          ),
          ListTile(
            title: Text(
              "Privacy Pollicy",
              style: TextStyle(fontSize: 19),
            ),
            leading: Icon(
              Icons.security,
              size: 28,
            ),
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            thickness: 2,
          ),
          Text(
            "Version 1.02.00",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
