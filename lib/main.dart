import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'パスワードポスト',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ネイリスト'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon', '楽天', 'Yahoo!', 'Google'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:ListView.builder(
        itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
              children:[
                ListTile(
                  onTap: (){
                    // 画面遷移の処理
                    Navigator.push(context,
                        // page遷移後のページにデータを渡す
                        MaterialPageRoute(builder: (context) => NextPage(
                          titleList[i]
                        )));
                  },
                  leading: Icon(Icons.vpn_key),
                  title: Text(titleList[i]),
                ),
                Divider(),
              ]
            );
        }
      ),
      // body: Center(
      //   child:
      //     Image.asset('assets/images/147016.jpg'),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add('apple');
          setState(() {});
          // print(titleList);
        }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// todo ホーム画面のタイトルの変更　20
// todo リストを表示 21
// todo リスト間に区切り線を表示 23
// todo リスト表示を動的に 24
// todo フロートアクションボタンをタップ時にリストを一つ追加 26
// todo 新しい画面を作成し、リストをタップした時に遷移 28
// todo 新しい画面のレイアウトの作成 30
// todo 新しい画面にリストからデータを引き継ぐ 31