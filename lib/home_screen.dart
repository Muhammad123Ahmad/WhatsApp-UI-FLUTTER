import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),

              Tab(child: Text('Chats')),

              Tab(child: Text('Status')),

              Tab(child: Text('Calls')),
              //Icon(Icons.camera_alt),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Log Out'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/11847767/pexels-photo-11847767.jpeg?cs=srgb&dl=pexels-alexander-krivitskiy-11847767.jpg&fm=jpg')),
                  title: Text('Ayesha'),
                  subtitle: Text('How are you?'),
                  trailing: Text('8:00 pm'),
                );
              }),
          ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('New updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.blue, width: 3)),
                            child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/11847767/pexels-photo-11847767.jpeg?cs=srgb&dl=pexels-alexander-krivitskiy-11847767.jpg&fm=jpg')),
                          ),
                          title: const Text('Ayesha'),
                          subtitle: const Text('20m ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/11847767/pexels-photo-11847767.jpeg?cs=srgb&dl=pexels-alexander-krivitskiy-11847767.jpg&fm=jpg')),
                    ),
                    title: const Text('Ayesha'),
                    subtitle: const Text('20m ago'),
                  );
                }
              }),
          ListView.builder(
              itemCount: 16,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/11847767/pexels-photo-11847767.jpeg?cs=srgb&dl=pexels-alexander-krivitskiy-11847767.jpg&fm=jpg')),
                  title: const Text('Ayesha'),
                  subtitle: Text(index / 2 == 0
                      ? 'you missed call'
                      : 'call time is 6:00 pm'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
