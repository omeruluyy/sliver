import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffe5e5e5),
        elevation: 0,
        title: SizedBox(
            height: 120,
            width: 100,
            child: Image.asset("assets/images/r.jpeg")),
        leading: IconButton(
          onPressed: () => null,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              iconSize: 40,
              color: Colors.black,
              onPressed: () => null,
              icon: Icon(Icons.account_circle),
            ),
          ),
          Divider(thickness: 1,color: Colors.black),
        ],




      ),
        body: CustomScrollView(
          slivers: [
            // SliverAppBar(
            //   centerTitle: true,
            //   backgroundColor: Color(0xffe5e5e5),
            //   elevation: 0,
            //   title: SizedBox(
            //       height: 120,
            //       width: 100,
            //       child: Image.asset("assets/images/r.jpeg")),
            //   leading: IconButton(
            //     onPressed: () => null,
            //     icon: Icon(Icons.arrow_back_ios),
            //     color: Colors.black,
            //   ),
            //   actions: <Widget>[
            //     Padding(
            //       padding: EdgeInsets.only(right: 10),
            //       child: IconButton(
            //         iconSize: 40,
            //         color: Colors.black,
            //         onPressed: () => null,
            //         icon: Icon(Icons.account_circle),
            //       ),
            //     ),
            //     Divider(thickness: 1,color: Colors.black),
            //   ],
            //
            //   pinned: true,
            //
            //
            // ),

             SliverAppBar(
              backgroundColor: Colors.amber,

               flexibleSpace: FlexibleSpaceBar(

                   centerTitle: true,
                   title: Text("Collapsing Toolbar",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 16.0,
                       )),
                   background: Image.network(
                       "https://images.squarespace-cdn.com/content/v1/58ec34be03596e9140b6a633/1509598561215-N03XJ9BSZPMLHEQ9AWNN/IMG_1305.JPG?format=1000w",
                     fit: BoxFit.cover,
                   )),

              expandedHeight: 40,
              collapsedHeight: 150,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      color: Colors.blue[100 * (index % 9 + 1)],
                      height: 80,
                      alignment: Alignment.center,
                      child: Text(
                        "Item $index",
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
                childCount: 1000, // 1000 list items
              ),
            ),
          ],
        ));
  }
}
