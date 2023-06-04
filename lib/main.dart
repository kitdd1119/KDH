import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M P C',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M P C'),
        centerTitle: true, // 타이틀 가운데 정렬
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              child: const Text(
                '어서오세요 여기는 고기 가격 비교 전문점입니다.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                '정직하고 신선한 고기를 즐겨보세요!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8), // 버튼 사이의 간격 조정을 위한 패딩 추가
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShoppingPage()),
                  );
                },
                style: ButtonStyle(
                  // 버튼의 배경색을 변경하고 싶은 경우
                  backgroundColor: MaterialStateProperty.all(Colors.purple[200]),
                  // 버튼의 모서리를 둥글게 변경하고 싶은 경우
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: const Text(
                  '장보기',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8), // 버튼 사이의 간격 조정을 위한 패딩 추가
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ButtonStyle(
                  // 버튼의 배경색을 변경하고 싶은 경우
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  // 버튼의 모서리를 둥글게 변경하고 싶은 경우
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: const Text(
                  '로그인하러 가기',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: '이메일',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '비밀번호',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '한 번 더 입력해주세요.',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton( // RaisedButton 대신 ElevatedButton으로 변경
              onPressed: () {
                // 회원가입 버튼을 눌렀을 때 실행될 코드
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupSuccessPage()),
                ).then((value) {
                  // 회원가입 성공 후에 기본 창으로 돌아갈 때 실행될 코드
                  Navigator.pop(context);
                });
              },
              child: const Text('회원가입'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입 완료'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle_outline,
              size: 80.0,
              color: Colors.green,
            ),
            const SizedBox(height: 16.0),
            const Text(
              '회원가입이 완료되었습니다!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20), // 위아래로 16.0 포인트의 간격 설정
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShoppingPage()),
                  );
                },
                child: const Text('장보러 가기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: '이메일',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: '비밀번호',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton( // RaisedButton 대신 ElevatedButton으로 변경
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: const Text('회원가입하러 가기'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        leading: IconButton( // Icon버튼 위젯을 만듦
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
          onPressed: () { // 이전 경로로 돌아감
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            "장보기",
            style: TextStyle(
                color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        actions: const[
          Icon(
            Icons.search,
            color: Colors.black,
            size: 35,
          ),
          Icon(
            Icons.map_rounded,
            color: Colors.black,
            size: 35,
          ),
          Row(
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
                size: 35,
              ),

            ],
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(0, 20),
          child: Container(),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}