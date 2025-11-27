
import 'package:flutter/material.dart';

import 'DetailScreen.dart';
import 'list.dart';

class Listviewbuilder extends StatelessWidget {
  Listviewbuilder({super.key});

  final List<list> lists = [
    list('Item 1', 'This is a description for item 1.', Icons.home),
    list('Item 2', 'This is a description for item 2.', Icons.star),
    list('Item 3', 'This is a description for item 3.', Icons.settings),
    list('Item 4', 'This is a description for item 4.', Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
            appBar: AppBar(
              title: Text('drawer'),
              actions: [PopupMenuButton(itemBuilder: (context) => [

                PopupMenuItem(child: Text('help'),
                  onTap: (){

                  },
                )
              ])],
              backgroundColor: Colors.blueGrey,

            ),

            drawer: Drawer(
              child:  ListView(
                children: [
                  DrawerHeader(
                      child:Center(child: Text('القائمة الجانبية'))
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (){

                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.settings) ,
                    title: Text('page settings'),
                    subtitle: Text('this is the page settings'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                  ListTile(
                    leading:Icon(Icons.home) ,
                    title: Text('page home'),
                    subtitle: Text('this is the page home'),
                    onTap: (
                        ){
                      print('page home');
                    },
                  ),
                ],
              ),
            ),
            body: ListView.builder(
                itemCount: lists.length,
                itemBuilder: (context,index){
                  return ListTile(
                    leading:Icon(lists[index].icon),
                    title: Text(lists[index].title),
                    subtitle: Text(lists[index].subtitle),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(item: lists[index]),
                        ),
                      );

                      print(lists[index].title);
                    },
                  );
                }
            )
    );
  }
}
