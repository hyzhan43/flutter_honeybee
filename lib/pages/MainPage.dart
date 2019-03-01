import 'package:flutter/material.dart';
import 'package:honeybee/common/constant/AppStrings.dart';
import 'package:honeybee/pages/DrawerPage.dart';
import 'package:honeybee/pages/LoginPage.dart';
import 'package:honeybee/pages/TodoPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 当前页索引
  int _index = 0;
  Color _todoIconColor = Colors.black;
  Color _doneIconColor = Colors.grey;

  static const TODO_PAGE = 0;
  static const DONE_PAGE = 1;

  // 默认显示首页
  String title = AppStrings.todoTab;
  List<Widget> _pageView;

  @override
  void initState() {
    super.initState();

    // 初始化并赋值
    _pageView = List()..add(TodoPage())..add(LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.brush), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pageView[_index],
      drawer: Drawer(child: DrawerPage()),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // 设置 bottom 中间 凹陷
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.today, color: _todoIconColor),
              onPressed: () {
                onPressedBottom(TODO_PAGE);
              },
            ),
            IconButton(
              icon: Icon(Icons.done, color: _doneIconColor),
              onPressed: () {
                onPressedBottom(DONE_PAGE);
              },
            )
          ],
        ),
      ),
    );
  }

  // 当点击底部按钮的时候 切换状态
  void onPressedBottom(int index) {
    _index = index;
    if (index == TODO_PAGE) {
      setState(() {
        _todoIconColor = Colors.black;
        _doneIconColor = Colors.grey;
        title = AppStrings.todoTab;
      });
    } else {
      setState(() {
        _doneIconColor = Colors.black;
        _todoIconColor = Colors.grey;
        title = AppStrings.doneTab;
      });
    }
  }
}
