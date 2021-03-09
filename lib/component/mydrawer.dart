import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Dehgane alaa e dinne@"),
              accountEmail: Text("dehganuss00@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  image: DecorationImage(
                      image: AssetImage("images/drawer.jpg"),
                      fit: BoxFit.cover))),
          ListTile(
            title: Text(
              "الصفحة الرئيسية",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed("home");
            },
          ),
          ListTile(
            title: Text(
              "العلامة",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          ListTile(
            title: Text(
              "الاعدادات",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "حول التطبيق",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.info,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "تسجيل الخروج",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.login_outlined,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
