import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_flutter/model/notes_database.dart';

import '../common_utils/colors.dart';
import 'notes_edit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>>? notesData;

  readDatabase() async {
    try {
      NotesDatabase notesDb = NotesDatabase();
      await notesDb.initDatabase();

      List<Map> notesList = await notesDb.getAllNotes();
      notesData = List<Map<String, dynamic>>.from(notesList);
      await notesDb.closeDatabase();
      return notesData;
    } catch (e) {
      print("Exception :::::::::::::::: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(c2),
          title: const Text(
            'Super Note',
            style: TextStyle(
              color: Color(c1),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NotesEdit()));
          },
          tooltip: "New Note",
          backgroundColor: const Color(c4),
          child: const Icon(
            Icons.add,
            color: Color(c1),
          ),
        ),
        body: FutureBuilder(
            future: readDatabase(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return AllNotesList(data: notesData);
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("ERRRORRRR!!!!"),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}

//All Notes List

class AllNotesList extends StatelessWidget {
  AllNotesList({super.key, this.data});

  final data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          dynamic item = data[index];
          return NoteTile(
            notesData: item,
          );
        });
  }
}

//NoteTile Widget

class NoteTile extends StatelessWidget {
  const NoteTile({super.key, this.notesData});

  final notesData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print("Clicked");
      },
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(notesData['title'][0]),
      ),
      title: Text(notesData['title']),
      subtitle: Text(notesData['content']),
    );
  }
}
