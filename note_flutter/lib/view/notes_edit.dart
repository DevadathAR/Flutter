import 'package:flutter/material.dart';
import 'package:note_flutter/common_utils/theme.dart';
import 'package:note_flutter/model/note.dart';
import 'package:note_flutter/model/notes_database.dart';
import 'package:note_flutter/view/color_palette.dart';

import '../common_utils/colors.dart';

class NotesEdit extends StatefulWidget {
  const NotesEdit({super.key});

  @override
  State<NotesEdit> createState() => _NotesEditState();
}

class _NotesEditState extends State<NotesEdit> {
  String noteColor = 'purple';
  String noteTitle = '';
  String noteContent = '';
  final _titleTextEditingController = TextEditingController();
  final _contentTextEditingController = TextEditingController();

  handleTitleTextChange() {
    setState(() {
      noteTitle = _titleTextEditingController.text.trim();
    });
  }

  handleNoteTextChange() {
    setState(() {
      noteContent = _contentTextEditingController.text.trim();
    });
  }

  //Change the color of screen according to the selected value
  handleColor(BuildContext currentContext) {
    showDialog(
        context: currentContext,
        builder: (context) => ColorPalette(
              parentContext: currentContext,
            )).then((colorName) {
      if (colorName != null) {
        setState(() {
          noteColor = colorName;
        });
      }
    });
  }

  //Save note data while clicking backbutton
  handleBackButton() async {
    // Declartion of insert method
    _insertNote(Note noteValue) async {
      NotesDatabase notesDatabase = NotesDatabase();

      await notesDatabase.initDatabase();

      int result = await notesDatabase.insertNote(noteValue);

      print("Insertion Result :::::::::::::::::::::: $result");
      await notesDatabase.closeDatabase();
    }

    if (noteTitle.isEmpty) {
      if (noteContent.isEmpty) {
        Navigator.pop(context);
        return;
      } else {
        String title = noteContent.split('\n')[0];
        setState(() {
          noteTitle = title;
        });
      }
    }

    Note noteObj = Note(title: noteTitle, content: noteContent, noteColor: noteColor);

    try {
      await _insertNote(noteObj);
    } catch (e) {
      print(e);
    } finally {
      Navigator.pop(context);
      return;
    }
  }

  @override
  void initState() {
    _titleTextEditingController.addListener(handleTitleTextChange);
    _contentTextEditingController.addListener(handleNoteTextChange);
    super.initState();
  }

  @override
  void dispose() {
    _titleTextEditingController.dispose();
    _contentTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(noteColors[noteColor]!['l']!),
      appBar: AppBar(
        backgroundColor: Color(noteColors[noteColor]!['b']!),
        leading: BackButton(
          onPressed: () => handleBackButton(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.lens,
              color: Color(c1),
            ),
            onPressed: () {
              handleColor(context);
            },
          )
        ],
        title: NoteTitleEntry(titleTextEditingController: _titleTextEditingController),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: NoteEntry(contentTextEditingController: _contentTextEditingController),
      ),
    );
  }
}

//Note Title TextField

class NoteTitleEntry extends StatelessWidget {
  const NoteTitleEntry({
    super.key,
    required TextEditingController titleTextEditingController,
  }) : _titleTextEditingController = titleTextEditingController;

  final TextEditingController _titleTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _titleTextEditingController,
      decoration: const InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.all(0),
        hintText: 'Title',
        hintStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, height: 1.5),
      ),
      maxLines: 1,
      style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold, height: 1.5),
      textCapitalization: TextCapitalization.words,
    );
  }
}

//Note Entry
class NoteEntry extends StatelessWidget {
  const NoteEntry({
    super.key,
    required TextEditingController contentTextEditingController,
  }) : _contentTextEditingController = contentTextEditingController;

  final TextEditingController _contentTextEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _contentTextEditingController,
      textCapitalization: TextCapitalization.sentences,
      decoration: null,
      maxLines: null,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
