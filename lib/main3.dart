import 'package:flutter/material.dart';

void main() {
  // 매트리얼앱을 실행
  runApp(MaterialApp(
    title: "Flutter Tutorial", // 타이틀 설정
    home: TutorialHome(), // 앱의 루트 경로 TutorialHome을 실행
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 스카폴드 위젯을 생성하여 반환. 스카폴드는 레이아웃을 위한 주요 매트리얼 컴포넌트임
    return Scaffold(
      // 앱바 구성성
      appBar: AppBar(
        // 리딩 위젯에 IconButton을 등록함. 리딩은 타이틀 위젯 앞에 출력되는 위젯임
        leading: IconButton(
            icon: Icon(Icons.menu), // 메뉴 아이콘 추가
            tooltip: "Navigation menu",
            onPressed: null // 선택되어도 별도의 액션은 없음
            ),

        // 타이틀 위젯에 텍스트를 등록함. 타이틀은 앱바에 출력되는 주요 위젯임임
        title: Text("Example Title"),

        // 액션즈 위젯에 아이콘버튼을 추가함. 액션즈 위젯은 타이틀 위젯 다음으로 출력되는 위젯임
        actions: <Widget>[
          // 아이콘 버튼 추가
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),

      // 바디 위젯에 Center 위젯을 등록함. 바디는 스크린의 대부분을 차지함
      body: Center(
        child: Text("Hello, world!"), // 센터의 자식으로 텍스트 추가
      ),

      // 플로팅액션버튼을 추가함함. 플로팅액션버튼은 컨텐츠 위에 떠있는 버튼으로 바디나 액션바에 속하지 않음
      floatingActionButton: FloatingActionButton(
          tooltip: "Add", child: Icon(Icons.add), onPressed: null),
    );
  }
}
