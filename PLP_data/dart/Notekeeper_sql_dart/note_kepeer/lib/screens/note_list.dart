import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: getNoteListView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('fab clicked');
        },
        tooltip: 'Add a new note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    //assuming ount isa a function that returns the number of items in the list
    int itemCount = count();
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.amber,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text(
              'dummy title', // You should use the actual title from your data model here
              style: titleStyle,
            ),
            subtitle: Text('dummy date'),// Same here, use actual date from your data model
            trailing: Icon(Icons.delete, color: Colors.grey),
            onTap: () {
              debugPrint("listTile tapped")
            },

          ),
        ),

      }


      
  }
}
