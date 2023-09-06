import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 3, 122, 65),
      ),
      body: Stack(children: [
        Positioned(
          top: 30,
          right: 110,
          child: Container(
            height: 200,
            width: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage('image/new/img.JPG'),
            ),
          ),
        ),
        Positioned(
          top: 160,
          right: 110,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 6, 197, 140),
                borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            top: 250,
            left: 10,
            right: 10,
            child: Container(
              height: 350,
              width: 350,
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    subtitle: Text("Rumaiz"),
                    title: Text("Name"),
                    trailing: Icon(
                      Icons.edit,
                      color: Color.fromARGB(255, 19, 143, 83),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About"),
                    subtitle: Text("Available"),
                    trailing: Icon(Icons.edit,
                        color: Color.fromARGB(255, 19, 143, 83)),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text("Phone"),
                    subtitle: Text("9207993784"),
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}