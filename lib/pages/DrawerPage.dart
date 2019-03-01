import 'package:flutter/material.dart';
import 'package:honeybee/common/constant/AppImages.dart';
import 'package:honeybee/common/constant/AppSizes.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30.0),
              child: ClipOval(
                child: Image.asset(
                  AppImages.defaultAvatar,
                  width: AppSizes.avatarSize,
                  height: AppSizes.avatarSize,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(child: Text('张三')),
            SizedBox(
              height: 30.0,
            ),
            ListTile(
              title: Text('关于我'),
              leading: Icon(Icons.info_outline),
              onTap: () {},
            ),
            ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
          ],
        ));
  }
}
