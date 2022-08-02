import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Lesson30p());
  }
}

class Lesson30p extends StatelessWidget {
  const Lesson30p({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff59A4F2),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Center(
              child: Text(
                'ТЕЛЕФОНЫ СЛУЖБ',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textwidget(
                text: 'Медицина',
              ),
              Container(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NewWidget();
                  },
                ),
              ),
              textwidget(text: 'Полиция'),
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                ),
              ),
              textwidget(text: 'Посольство'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                ),
              ),
              textwidget(text: 'Транспорт'),
              Container(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return NewWidget();
                    }),
                    separatorBuilder: (context, index) {
                      return NewWidget();
                    },
                    itemCount: 3),
              ),
              textwidget(text: 'Свои номера'),
              Container(
                height: 83,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 20),
                        width: 83,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.add,
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Containerwidg(),
                    Containerwidg(),
                    Containerwidg(),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Containerwidg extends StatelessWidget {
  const Containerwidg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: 172,
        height: 83,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff59A4F2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/hotel.png',
              width: 70,
              height: 70,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Отель\nНевский',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}

class textwidget extends StatelessWidget {
  final String text;

  const textwidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 24),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: 232,
        height: 83,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff59A4F2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/123.png',
              width: 70,
              height: 70,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Единый телефон\nслужб',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}
