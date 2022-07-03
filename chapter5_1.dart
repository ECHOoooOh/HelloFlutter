import 'package:flutter/material.dart'; //导入包

void main() {
  runApp(const MyApp()); //应用入口
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //通过MaterialApp可以设置应用名称、
      //主题、语言、首页和路由列表等
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      //home 为flutter应用的首页，是一个widget
    );
  }
}

class MyHomePage extends StatefulWidget {
  //有状态的组件
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //MyHomePageState 对应状态类
  int _counter = 0; //用于记录按钮点击次数

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
      body: Center(
          child: Container(
        color: Colors.black,
        child: Transform(
          alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
          transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.deepOrange,
            child: const Text('Apartment for rent!'),
          ),
        ),
      )),
      //页面右下角带+的悬浮按钮
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
