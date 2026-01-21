import 'package:flutter/material.dart';
import 'package:project_172/auth/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project_172/about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final supabase = Supabase.instance.client;
  List<dynamic> notes = [];
  final _noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final userId = supabase.auth.currentUser!.id;
    final response = await supabase
        .from('notes')
        .select()
        .eq('user_id', userId);
    setState(() => notes = response);
  }

  Future<void> _addNote() async {
    if (_noteController.text.trim().isEmpty) return;
    final userId = supabase.auth.currentUser!.id;
    await supabase.from('notes').insert({
      'user_id': userId,
      'content': _noteController.text.trim(),
      'created_at': DateTime.now().toIso8601String(),
    });
    _noteController.clear();
    _loadNotes();
  }

  Future<void> _logout() async {
    await supabase.auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[800]),
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'MyNotes',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.note, color: Colors.grey[400]),
              title: const Text('Notes', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),

            const Divider(),
            const Spacer(),
            const Divider(),

            ListTile(
              leading: Icon(Icons.logout, color: Colors.grey[400]),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                _logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.info, color: Colors.grey[400]),
              title: const Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '© 2026 Notes App™',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _noteController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Add a new note...',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      filled: true,
                      fillColor: Colors.grey[900],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8), // diff. between textfield and button
                IconButton(
                  onPressed: _addNote,
                  icon: Icon(Icons.add, color: Colors.white),
                  style: IconButton.styleFrom(backgroundColor: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return Card(
                  color: Colors.grey[850],
                  child: ListTile(
                    title: Text(
                      note['content'] ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      note['created_at']?.toString().split('T')[0] ?? '',
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red[400]),
                      onPressed: () async {
                        await supabase
                            .from('notes')
                            .delete()
                            .eq('id', note['id']);
                        _loadNotes();
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
