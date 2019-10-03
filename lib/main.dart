import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Flutter Tutorial", // 타이틀 설정
        home: HomeExample(), // 앱의 루트 경로 HomeExample 실행
      ),
    );

class HomeExample extends StatelessWidget {
  Widget build(BuildContext context) {
    // 컬러 지정
    Color color = Theme.of(context).primaryColor;

    // 버튼섹션이라는 컨테이너 위젯을 만듬.
    Widget buttonSection = Container(
      // 자식 열을 만듬
      child: Row(
        // 공간을 균등하게 배치
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 여러개의 위젯을 배치할 수 있는 자식을 만듬
        children: <Widget>[
          // _buildButtonColumn 위젯을 배치함
          _buildButtonColumn(color, Icons.call, "Call"),
          _buildButtonColumn(color, Icons.add, "Add"),
          _buildButtonColumn(color, Icons.share, "Share")
        ],
      ),
    );

    // 텍스트 섹션 컨테이너 위젯을 만듬
    Widget textSection = Container(
      // 상하좌우 32픽셀의 여백을 줌
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    // 컨테이터 위젯 구현
    Widget titleSection = Container(
      // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
      padding: const EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 30),
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
                  padding: const EdgeInsets.only(
                      bottom: 8), // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                  child: Text(
                    // 컨테이너의 자식으로 텍스트 삽입
                    "Ys IX: Monstrum Nox | Ys Wiki | FANDOM",
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
          Text('999') // 텍스트 표시
        ],
      ),
    );

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
        title: Text("Feature Page"),

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
        children: <Widget>[
          Image.asset('images/og.jpg'),
          titleSection,
          buttonSection,
          textSection
        ],
      ),

      // 플로팅 액션버튼 위젯을 생성
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alarm),
        backgroundColor: Colors.deepOrange,
      ),

      // 하단 네비게이션바 위젯 생성
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            title: Text("Feature"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setting"),
          ),
        ],
      ),
    );
  } // build

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        )
      ],
    );
  } // _buildButtonColumn
} // HomeExample
