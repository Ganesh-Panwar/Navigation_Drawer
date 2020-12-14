import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(
          size: 42.0,
        ),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,
        ),
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To Page 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: Text('To Page 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Drawer Example'),
      ),
      body: Center(
        child: Text('Swip or Click uppper-left icon to see drawer.'),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}
