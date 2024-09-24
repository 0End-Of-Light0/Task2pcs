import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'EFBO-04-22, Daniil Zolotykh'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("test"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network(
            //    'https://i.pinimg.com/736x/55/d8/9f/55d89f8d4b38f10228c8b097457a9e6c.jpg'),
            const Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              'EFBO-04-22, Daniil Zolotykh',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Логин',
                border: OutlineInputBorder(),
                fillColor: Color.fromRGBO(244, 243, 243, 1),
                filled: true,
              )),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Пароль',
                border: OutlineInputBorder(),
                fillColor: Color.fromRGBO(244, 243, 243, 1),
                filled: true,
              )),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              activeColor: Colors.grey,
              checkColor: Colors.white,
              contentPadding: const EdgeInsets.only(left: 8.0),
              title: const Text(
                'Сохранить ли данные?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue, // Синий фон
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  width: double.infinity,
                  height: 30,
                  child: const Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white, // Белый текст
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  width: double.infinity,
                  height: 30,
                  child: const Center(
                    child: Text(
                      'Регистрация',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                side: BorderSide.none,
                backgroundColor: Colors.transparent,
              ),
              child: const Text(
                'Forgor Password',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ));
  }
}
