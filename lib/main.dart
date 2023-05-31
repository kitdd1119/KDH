import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M P C',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '로그인 해보기',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}
*/

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('M P C'),
        centerTitle: true, // 타이틀 가운데 정렬
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                '어서오세요 여기는 고기 가격 비교 전문점입니다.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                '정직하고 신선한 고기를 즐겨보세요!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
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
              child: Text(
                '장보기',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ElevatedButton(
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
              child: Text(
                '로그인하러 가기',
                style: TextStyle(
                  fontSize: 16,
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
        title: Text('회원가입'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: '이메일',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: '비밀번호',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: '한 번 더 입력해주세요.',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
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
              child: Text('회원가입'),
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
        title: Text('회원가입 완료'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              size: 80.0,
              color: Colors.green,
            ),
            SizedBox(height: 16.0),
            Text(
              '회원가입이 완료되었습니다!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
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
        title: Text('로그인'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: '이메일',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: '비밀번호',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton( // RaisedButton 대신 ElevatedButton으로 변경
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('회원가입하러 가기'),
            ),
          ],
        ),
      ),
    );
  }
}