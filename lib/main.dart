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
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List items = [
    {
      "images": "images/1.png",
      "title": "Laptop",
      "subtitle": "",
      "price": "300\$"
    },
    {
      "images": "images/2.png",
      "title": "Laptop",
      "subtitle": "",
      "price": "300\$"
    },
    {
      "images": "images/3.png",
      "title": "Laptop",
      "subtitle": "",
      "price": "300\$"
    },
    {
      "images": "images/4.png",
      "title": "Laptop",
      "subtitle": "",
      "price": "300\$"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "my bag"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "profile"),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.menu, size: 40),
                )
              ],
            ),
            Container(height: 30),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // Display categories in a horizontal scrollable ListView
            Container(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TheSliderInTopState(icon: Icons.phone, title: 'Phone'),
                  TheSliderInTopState(icon: Icons.camera, title: 'Camera'),
                  TheSliderInTopState(icon: Icons.fax, title: 'Fax'),
                  TheSliderInTopState(icon: Icons.fax, title: 'Fax'),
                  TheSliderInTopState(icon: Icons.fax, title: 'Fax'),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Best Selling",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              itemCount: items.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, i) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        width: 300,
                        color: Colors.white,
                        child: Image.asset(items[i]["images"], height: 100, fit: BoxFit.fill),
                      ),
                      Text(
                        items[i]["title"],
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(height: 10),
                      Text(
                        items[i]["subtitle"],
                        style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                      ),
                      Container(height: 6),
                      Text(
                        items[i]["price"],
                        style: TextStyle(fontSize: 14, color: Colors.orange[800], fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );

  }
}

class TheSliderInTopState extends StatefulWidget {
  const TheSliderInTopState({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  _TheSliderInTopState createState() => _TheSliderInTopState();
}

class _TheSliderInTopState extends State<TheSliderInTopState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, // Adjust the width to your preference
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(
              widget.icon,
              size: 40,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}

