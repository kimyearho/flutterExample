import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Flutter Tutorial", // 타이틀 설정
      home: HomeExample(), // 앱의 루트 경로 HomeExample 실행
    ));

class HomeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯을 생성하여 반환
    // https://flutter.dev/docs/development/ui/widgets-intro (공식문서 참고)
    return Scaffold(
      // 앱바 구성
      appBar: AppBar(
        // leading 위젯은 앱바 구성 중 타이틀 위젯 앞에 출력되는 위젯
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white70,
            size: 30,
          ),
          // 클릭 이벤트를 선언하지 않으면 활성화되지 않음.
          onPressed: null,
        ),

        // 제목 위젯 구성
        title: Text("Nav Menu"),

        // 액션 위젯 구성
        // 순서에 따라 액션 위젯은 타이틀 다음으로 표시 됨.
        actions: <Widget>[
          // 아이콘 버튼 추가
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white70,
              size: 30,
            ),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),

      // Body 위젯은 앱바를 제외한 스크린의 영역을 차지함.
      // Expanded 와 비슷한 역할인것 같다.
      // Column 위젯을 사용하면 수직으로 여러 위젯을 배치할 수 있음.
      body: Column(
        children: <Widget>[titleSection],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            title: Text("Refresh"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  }
}

// 컨테이터 위젯 구현
Widget titleSection = Container(
  // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
  padding: const EdgeInsets.all(32),
  // 자식으로 로우를 추가
  child: Row(
    // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
    children: <Widget>[
      // 첫번째 자식
      Expanded(
        // 첫번째 자식의 자식으로 컬럼 추가
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 자식들을 왼쪽정렬로 배치함
          // 컬럼의 자식들로 컨테이너와 텍스트를 추가
          children: <Widget>[
            // 컬럼의 첫번째 자식 컨테이너
            Container(
              padding:
                  const EdgeInsets.only(bottom: 8), // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
              child: Text(
                // 컨테이너의 자식으로 텍스트 삽입
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold // 텍스트 강조 설정
                    ),
              ),
            ),
            // 컬럼의 두번째 자식으로 텍스트 삽입
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.grey[500] // 텍스트의 색상을 설정
                  ),
            )
          ],
        ),
      ),
      // 두번째 자식 아이콘
      Icon(
        Icons.star, // 별모양 아이콘 삽입
        color: Colors.red[500], // 빨간색으로 설정
      ),
      // 세번째 자식
      Text('43') // 텍스트 표시
    ],
  ),
);
