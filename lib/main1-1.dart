import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My App Sample!",
    home: MyLayoutExample(),
  ));
}

class MyLayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // child 하위에 children <Widger>은 배열임.
        // 즉, children 에는 여러개의 위젯을 배치할 수 있음.
        children: <Widget>[
          // MyAppBar 위젯
          MyAppBar(
            title: Text(
              "Navigation Bar!",
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),

          /*
           * 두번째 자식으로 Expanded를 추가함.
           * Expanded는 남은 영역을 채워넣는 역할을 함.
           * 이 경우 MyAppBar 위젯외 남은 영역을 채우는 것임
           */
          Expanded(
            // 자식을 만들고 컨테이너를 생성함
            child: Container(
              // 패딩과 박스 데코레이션 스타일을 정의함
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(color: Colors.black),
              // 다시 자식을 만들고 컨테이너를 생성함
              child: Container(
                // 데코레이션 스타일 정의함
                decoration: BoxDecoration(color: Colors.white70),
                // 자식을 만들고 Center 위젯을 추가하고, 텍스트 위젯을 추가함
                child: Center(
                  child: Text(
                    "이중 컨테이너 레이어",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        fontSize: 30),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(color: Colors.green),
              child: Center(
                child: Text(
                  "두번째 Expanded",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "세번째 Expanded",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    // MyAppBar 위젯은 컨테이너 레이아웃으로 구성한다
    return Container(
        // 컨테이너 레이아웃 내부에는 스타일을 선언할수 있음.
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        decoration: BoxDecoration(color: Colors.blue),
        // 컨테이너의 열(row)을 자식(child)으로 추가함.
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: null,
                padding: EdgeInsets.symmetric(vertical: 50)),
            Expanded(child: Row()),
          ],
        ));
  }
}
