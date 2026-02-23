/*
1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.

*/

class Note {
  final String title;
  final String content;
  final DateTime createdAt;

  Note({
    required this.title,
    required this.content,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  String toString() {
    return '[$title] (${createdAt.toIso8601String()})\n$content';
  }
}

class NotesApp {
  final List<Note> _notes = [];

  void addNote(String title, String content) {
    _notes.add(Note(title: title, content: content));
  }

  List<Note> listAllNotes() => List.unmodifiable(_notes);

  Note? findByTitle(String title) {
    for (final note in _notes) {
      if (note.title.toLowerCase() == title.toLowerCase()) {
        return note;
      }
    }
    return null;
  }
}

void main() {
  final app = NotesApp();

  app.addNote('Meeting', 'Discuss project timeline and milestones.');
  app.addNote('Shopping', 'Milk, eggs, bread.');

  print('--- All Notes ---');
  for (final note in app.listAllNotes()) {
    print(note);
    print('-----------------');
  }

  print('--- Search ---');
  final found = app.findByTitle('shopping');
  print(found ?? 'Note not found');
}
