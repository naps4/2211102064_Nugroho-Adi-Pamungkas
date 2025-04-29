import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    // Definisi style untuk teks
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Widget daftar ikon dan teks
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Widget judul
    const titleText = Text(
      'Strawberry Pavlova',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );

    // Widget subjudul
    const subTitle = Text(
      'A delicious pavlova topped with fresh strawberries and whipped cream.',
      style: TextStyle(fontSize: 16, color: Colors.grey),
    );

    // Widget rating
    final ratings = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: List.generate(5, (index) {
              return Icon(
                index < 3 ? Icons.star : Icons.star_border,
                color: Colors.green[500],
              );
            }),
          ),
          const Text('170 Reviews', style: TextStyle(fontSize: 16)),
        ],
      ),
    );

    // Widget kolom kiri yang berisi teks dan ikon
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    // Widget gambar utama
    final mainImage = Expanded(
      child: Image.asset(
        'assets/pavlova.jpg', // Ganti dengan path gambar yang sesuai
        fit: BoxFit.cover,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Nested Rows & Columns Example')),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(title: Text('Demo')),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  height: 600,
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 440, child: leftColumn),
                        mainImage, // Tambahkan gambar utama di sini
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              }, childCount: 20),
            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Text('List Item $index'),
                  );
                },
                childCount: 10, // Atur jumlah item dalam daftar
              ),
            ),
          ],
        ),
      ),
    );
  }
}
