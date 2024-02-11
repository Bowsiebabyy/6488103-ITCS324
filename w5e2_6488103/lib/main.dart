import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomoyo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'introduce page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color(0xFFFDFDFC),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Image.asset('./assets/logo.png', height: 50),
      ),
      body: Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Center(child: Image.asset('./assets/schedulepic.png', height: 500)),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Container(
            width: 300,
            child: Text(
              'ENJOY AND SUPPORT THE OFFICIAL LICENSED ANIME FROM THE LICENSORS EVERYDAY',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFFEA4958)),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginPage(
                          studentname: 'Panyaporn',
                        )),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10, horizontal: 30), // Add padding here
              child: Text(
                'JOIN US',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Image.asset('./assets/dot.png')
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final String? studentname;

  LoginPage({
    Key? key,
    required this.studentname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Color(0xFFFDFDFC),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
        ),
        body: Column(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              Center(child: Image.asset('./assets/logo2.png', width: 300)),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'new to Tomoyo?',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 8),
                    Text('Sign up',
                        style:
                            TextStyle(color: Color(0XFFEA4958), fontSize: 16)),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Container(
                            width: 350,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: '$studentname',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Color(0xFFD7D3D0)),
                                ),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 350,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide:
                                          BorderSide(color: Color(0xFFD7D3D0)),
                                    ),
                                  ),
                                  validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password is required';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'forgot password?',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0XFFEA4958)),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15, horizontal: 30), // Add padding here
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ]));
  }
}
