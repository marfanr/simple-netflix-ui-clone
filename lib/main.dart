// Netflix UI Clone with flutter
import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          scaffoldBackgroundColor: const Color(0xFF151515),
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white, fontSize: 16))),
      debugShowCheckedModeBanner: false,
      title: 'Netflix UI Clone',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('cast button clicked'),
          backgroundColor: Colors.black26.withOpacity(0),
          child: const Icon(Icons.cast),
        ),
        bottomNavigationBar: Container(
          height: 55,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 1, spreadRadius: 1),
            ],
            color: const Color(0xFF151515),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: Container(
            color: Colors.black45.withOpacity(0),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                child: Row(
              children: [
                const Image(image: AssetImage('assets/logo.png'), width: 40),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text('Acara TV'),
                      Text('Film'),
                      Text('Daftar Saya'),
                    ],
                  ),
                )
              ],
            )),
          ),
        ),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
                child: Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/poster.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    width: 130,
                    bottom: 170,
                    left: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                          image: AssetImage('assets/logo.png'),
                          width: 15,
                        ),
                        Text(
                          'SERIAL',
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey[400], letterSpacing: 5, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    bottom: 70,
                    left: 100,
                    child: Text('STRANGER\nTHINGS',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700), textAlign: TextAlign.center),
                  ),
                  Positioned(
                      bottom: 40,
                      height: 20,
                      left: 90,
                      width: 220,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Mencekam'),
                          Icon(
                            Icons.circle,
                            size: 5,
                            color: Colors.red,
                          ),
                          Text('Seru'),
                          Icon(
                            Icons.circle,
                            size: 5,
                            color: Colors.red,
                          ),
                          Text('Remaja'),
                        ],
                      )),
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
//                  color: Colors.blue,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.add, color: Colors.white, size: 40),
                          SizedBox(height: 5),
                          Text('Daftar Saya'),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.play_arrow),
                            Text('Putar',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20)),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.info_outline, color: Colors.white, size: 40),
                          SizedBox(height: 5),
                          Text('Info'),
                        ],
                      ),
                    ],
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Preview',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
