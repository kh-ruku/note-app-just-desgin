import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {"note": "learn Flutter", "icon": Icons.flutter_dash},
    {"note": "workout", "icon": Icons.sports_mma},
    {"note": "learn english", "icon": Icons.language},
    {"note": "praying", "icon": Icons.book},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("Note");
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key("$index"),
            child: ListNotes(
              notes: notes[index],
            ),
          );
        },
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  const ListNotes({super.key, this.notes});

  // ignore: prefer_typing_uninitialized_variables
  final notes;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "images/Bg.png",
              fit: BoxFit.contain,
              height: 80,
            ),
          ),
          Expanded(
            flex: 3,
            child: ListTile(
              title: Text("${notes["note"]}"),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
